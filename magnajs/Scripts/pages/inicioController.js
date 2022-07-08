(function () {
    'use strict';

    angular.module(appName)
        .controller('inicioController', inicioController);

    inicioController.$inject = ['$scope', '$http', '$rootScope'];

    function inicioController($scope, $http, $rootScope) {
        var service = $Ex;
        service.Http = $http;
        var vm = this;
        vm.viewDetail = false;
        vm.titulo = Ex.GetResourceValue("Titulo") || '';
        vm.isValid = true;
        vm.principal = [];
        vm.resultado = [];
        vm.usuario = {};
        vm.usuario.EsAprobador = EsAprobadorInfo;
        vm.usuario.EsCaptura = EsCapturaInfo;
        vm.usuario.Loggeado = LoggeadoInfo;
        vm.evidenciaAbierta = false;
        vm.rojo = 0;
        vm.amarillo = 0;
        vm.verde = 0;

        


        var date = new Date();
        var dd = date.getDate();
        var mm = date.getMonth();
        var aaaa = date.getFullYear();        
        vm.diaHoy = new Date(aaaa, mm, dd);


        $scope.fileOptionsDetalle = {
            url: "../Codes/UploadFile.ashx",
            autoUpload: true,
            //validExtensions: Ex.GetResourceValue('validExtensions'),
            maxFilesize: Ex.GetResourceValue('maxFileSize'),
            puedeEliminar: vm.usuario.EsCaptura ? true : false
        };


        $scope.fileParameters = { Folder: Ex.GetResourceValue("folderArchivos") };



        $scope.openDocumento = function (info, num) {
            try {

                if (num == 1) {
                    info.NombreArchivoNuevo = info.na_punto_quiebre;
                    info.RutaArchivo = info.ra_punto_quiebre;
                } else if (num == 2) {
                    info.NombreArchivoNuevo = info.na_causa_raiz;
                    info.RutaArchivo = info.ra_causa_raiz;
                } else if (num == 3) {
                    info.NombreArchivoNuevo = info.na_acciones_correctivas;
                    info.RutaArchivo = info.ra_acciones_correctivas;
                } else if (num == 4) {
                    info.NombreArchivoNuevo = info.na_quality_focus;
                    info.RutaArchivo = info.ra_quality_focus;
                } else if (num == 5) {
                    info.NombreArchivoNuevo = info.na_deteccion;
                    info.RutaArchivo = info.ra_deteccion;
                } else if (num == 6) {
                    info.NombreArchivoNuevo = info.na_auditoria_capas;
                    info.RutaArchivo = info.ra_auditoria_capas;
                } else if (num == 7) {
                    info.NombreArchivoNuevo = info.na_validacion_acciones;
                    info.RutaArchivo = info.ra_validacion_acciones;
                } else if (num == 8) {
                    info.NombreArchivoNuevo = info.na_plan_control;
                    info.RutaArchivo = info.ra_plan_control;
                } else if (num == 9) {
                    info.NombreArchivoNuevo = info.na_actualizacion_hioe;
                    info.RutaArchivo = info.ra_actualizacion_hioe;
                } else if (num == 10) {
                    info.NombreArchivoNuevo = info.na_lecciones_aprendidas;
                    info.RutaArchivo = info.ra_lecciones_aprendidas;
                }


                vm.evidenciaAbierta = true;

                document.body.style.cursor = 'wait';
                var url = '../Documentos/' + $scope.fileParameters.Folder + '/' + info.RutaArchivo + '?' + $scope.numeroAleatorio(1, 1000);
                window.open(url);
                document.body.style.cursor = '';
                return false;

            //    $Ex.Execute("OpenDocumento", info, function (response, isInvalid) {
            //        if (response.d) {
            //            window.location = "DownLoadPage.aspx?d=" + getRandom();
            //        }
            //        else {
            //            Ex.mensajes(Ex.GetResourceValue("msgArchivoNoEncontrado"));
            //        }
            //    });
            } catch (ex) {
                Ex.mensajes(ex.message, 4);
            }
        };

        $scope.numeroAleatorio = function (min, max) {
            return Math.round(Math.random() * (max - min) + min);
        }


        $scope.setParametrosArchivo = function (response, item, num) {

            if (num == 1) {
                item.UID_punto_quiebre = response.UID;
                item.ra_punto_quiebre = response.NombreArchivo;
                item.EsArchivoNuevo_punto_quiebre = response.EsNuevo;
            } else if (num == 2) {
                item.UID_causa_raiz = response.UID;
                item.ra_causa_raiz = response.NombreArchivo;
                item.EsArchivoNuevo_causa_raiz = response.EsNuevo;
            } else if (num == 3) {
                item.UID_acciones_correctivas = response.UID;
                item.ra_acciones_correctivas = response.NombreArchivo;
                item.EsArchivoNuevo_acciones_correctivas = response.EsNuevo;
            } else if (num == 4) {
                item.UID_quality_focus = response.UID;
                item.ra_quality_focus = response.NombreArchivo;
                item.EsArchivoNuevo_quality_focus = response.EsNuevo;
            } else if (num == 5) {
                item.UID_deteccion = response.UID;
                item.ra_deteccion = response.NombreArchivo;
                item.EsArchivoNuevo_deteccion = response.EsNuevo;
            } else if (num == 6) {
                item.UID_auditoria_capas = response.UID;
                item.ra_auditoria_capas = response.NombreArchivo;
                item.EsArchivoNuevo_auditoria_capas = response.EsNuevo;
            } else if (num == 7) {
                item.UID_validacion_acciones = response.UID;
                item.ra_validacion_acciones = response.NombreArchivo;
                item.EsArchivoNuevo_validacion_acciones = response.EsNuevo;
            } else if (num == 8) {
                item.UID_plan_control = response.UID;
                item.ra_plan_control = response.NombreArchivo;
                item.EsArchivoNuevo_plan_control = response.EsNuevo;
            } else if (num == 9) {
                item.UID_actualizacion_hioe = response.UID;
                item.ra_actualizacion_hioe = response.NombreArchivo;
                item.EsArchivoNuevo_actualizacion_hioe = response.EsNuevo;
            } else if (num == 10) {
                item.UID_lecciones_aprendidas = response.UID;
                item.ra_lecciones_aprendidas = response.NombreArchivo;
                item.EsArchivoNuevo_lecciones_aprendidas = response.EsNuevo;
            }


        };

        vm.guardar = function () {
            try {
                Ex.load(true);
                service.Execute('Guardar', vm.item, function (response) {
                    if (response.d) {
                        Ex.mensajes('Se guardó con exito!', 1);
                        vm.consultar();
                    }
                    Ex.load(false)
                })
                $scope.modalNotas.close();
            }
            catch (ex) {
                Ex.mensajes(ex.message, 4);
                Ex.load(false);
            }
        }


        vm.consultar = function () {
            try {
                Ex.load(true);
                var datos = {};
                service.Execute('GetInformacion', datos, function (response) {
                    if (response.d) {
                        vm.principal = response.d.InformacionPrincipal;
                        vm.resultado = response.d.Resultado;
                        vm.principal_ = angular.copy(vm.principal);

                        var rojo = _.filter(vm.resultado, { 'estatus_global': 'fondo_rojo' })
                        vm.rojo = rojo.length;

                        var amarillo = _.filter(vm.resultado, { 'estatus_global': 'fondo_amarillo' })
                        vm.amarillo = amarillo.length;

                        var verde = _.filter(vm.resultado, { 'estatus_global': 'fondo_verde' })
                        vm.verde = verde.length;

                    }
                    Ex.load(false)
                })
            }
            catch (ex) {
                Ex.mensajes(ex.message, 4);
                Ex.load(false);
            }
        }

        vm.aprobar = function (accionAprobador, item, num) {
            try {


                // var esRechazar = accionAprobador !== "Aprobar";

                if (vm.evidenciaAbierta) {
                    var mensaje = Ex.GetResourceValue('msgConfirmar' + accionAprobador);

                    //if (esRechazar && !$scope.notaCredito.Comentario) {
                    //    $scope.comentarioRequerido = true;
                    //    Ex.mensajes(Ex.GetResourceValue(esRechazar ? "msgComentarioRequerdio" : "msgMotivoNotaRequerdio"));
                    //} else {
                    Ex.mensajes(mensaje, 2, null, null, null, function () {
                        item.Comentarios = item.co_campo;
                        if (num == 1) {
                            item.es_punto_quiebre = accionAprobador;
                        } else if (num == 2) {
                            item.es_causa_raiz = accionAprobador;                            
                        } else if (num == 3) {
                            item.es_acciones_correctivas = accionAprobador;
                        } else if (num == 4) {
                            item.es_quality_focus = accionAprobador;
                        } else if (num == 5) {
                            item.es_deteccion = accionAprobador;
                        } else if (num == 6) {
                            item.es_auditoria_capas = accionAprobador;
                        } else if (num == 7) {
                            item.es_validacion_acciones = accionAprobador;
                        } else if (num == 8) {
                            item.es_plan_control = accionAprobador;
                        } else if (num == 9) {
                            item.es_actualizacion_hioe = accionAprobador;
                        } else if (num == 10) {
                            item.es_lecciones_aprendidas = accionAprobador;
                        }
                        $Ex.Execute("AprobarRechazar", item, function (response, isInvalid) {
                            vm.consultar();
                            if (response.d.hasOwnProperty("ErrorParaUsuario")) {
                                Ex.mensajes(response.d.ErrorParaUsuario);
                                console.log(response.d.ErrorParaTi);
                            }
                        });
                    }, function () { }, null);
                    //}
                    $scope.modalNotas.close();
                }
                else {
                    Ex.mensajes(Ex.GetResourceValue("msgAbrirEvidencia"));
                }
            } catch (ex) {
                Ex.mensajes(ex.message, 4);
            }
        }

        vm.openModalNotas = function (pItem, num) {            

            try {
                Ex.load(true);
                vm.item = {};
                vm.item = pItem;

                vm.item.numero = num;

                if (num == 1) {                    
                    vm.item.titulo = 'Punto de Quiebre';
                    vm.item.campo = pItem.punto_quiebre;
                    vm.item.es_campo = pItem.es_punto_quiebre;
                    vm.item.fd_campo = pItem.fd_punto_quiebre;
                    vm.item.fs_campo = pItem.fs_punto_quiebre;
                    vm.item.na_campo = pItem.na_punto_quiebre;
                    vm.item.ra_campo = pItem.ra_punto_quiebre;
                    vm.item.us_campo = pItem.us_punto_quiebre;
                    vm.item.co_campo = pItem.co_punto_quiebre;
                }
                else if (num == 2) {
                    vm.item.titulo = 'Causa Raiz';
                    vm.item.campo = pItem.causa_raiz;
                    vm.item.es_campo = pItem.es_causa_raiz;
                    vm.item.fd_campo = pItem.fd_causa_raiz;
                    vm.item.fs_campo = pItem.fs_causa_raiz;
                    vm.item.na_campo = pItem.na_causa_raiz;
                    vm.item.ra_campo = pItem.ra_causa_raiz;
                    vm.item.us_campo = pItem.us_causa_raiz;
                    vm.item.co_campo = pItem.co_causa_raiz;
                }
                else if (num == 3) {
                    vm.item.titulo = 'Acciones Correctivas';
                    vm.item.campo = pItem.acciones_correctivas;
                    vm.item.es_campo = pItem.es_acciones_correctivas;
                    vm.item.fd_campo = pItem.fd_acciones_correctivas;
                    vm.item.fs_campo = pItem.fs_acciones_correctivas;
                    vm.item.na_campo = pItem.na_acciones_correctivas;
                    vm.item.ra_campo = pItem.ra_acciones_correctivas;
                    vm.item.us_campo = pItem.us_acciones_correctivas;
                    vm.item.co_campo = pItem.co_acciones_correctivas;
                }
                else if (num == 4) {
                    vm.item.titulo = 'Quality Focus';
                    vm.item.campo = pItem.quality_focus;
                    vm.item.es_campo = pItem.es_quality_focus;
                    vm.item.fd_campo = pItem.fd_quality_focus;
                    vm.item.fs_campo = pItem.fs_quality_focus;
                    vm.item.na_campo = pItem.na_quality_focus;
                    vm.item.ra_campo = pItem.ra_quality_focus;
                    vm.item.us_campo = pItem.us_quality_focus;
                    vm.item.co_campo = pItem.co_quality_focus;
                }
                else if (num == 5) {
                    vm.item.titulo = 'Detección';
                    vm.item.campo = pItem.deteccion;
                    vm.item.es_campo = pItem.es_deteccion;
                    vm.item.fd_campo = pItem.fd_deteccion;
                    vm.item.fs_campo = pItem.fs_deteccion;
                    vm.item.na_campo = pItem.na_deteccion;
                    vm.item.ra_campo = pItem.ra_deteccion;
                    vm.item.us_campo = pItem.us_deteccion;
                    vm.item.co_campo = pItem.co_deteccion;
                }
                else if (num == 6) {
                    vm.item.titulo = 'Auditoria de Capas';
                    vm.item.campo = pItem.auditoria_capas;
                    vm.item.es_campo = pItem.es_auditoria_capas;
                    vm.item.fd_campo = pItem.fd_auditoria_capas;
                    vm.item.fs_campo = pItem.fs_auditoria_capas;
                    vm.item.na_campo = pItem.na_auditoria_capas;
                    vm.item.ra_campo = pItem.ra_auditoria_capas;
                    vm.item.us_campo = pItem.us_auditoria_capas;
                    vm.item.co_campo = pItem.co_auditoria_capas;
                }
                else if (num == 7) {
                    vm.item.titulo = 'Validación de Acciones';
                    vm.item.campo = pItem.validacion_acciones;
                    vm.item.es_campo = pItem.es_validacion_acciones;
                    vm.item.fd_campo = pItem.fd_validacion_acciones;
                    vm.item.fs_campo = pItem.fs_validacion_acciones;
                    vm.item.na_campo = pItem.na_validacion_acciones;
                    vm.item.ra_campo = pItem.ra_validacion_acciones;
                    vm.item.us_campo = pItem.us_validacion_acciones;
                    vm.item.co_campo = pItem.co_validacion_acciones;
                }
                else if (num == 8) {
                    vm.item.titulo = 'Plan de Control';
                    vm.item.campo = pItem.plan_control;
                    vm.item.es_campo = pItem.es_plan_control;
                    vm.item.fd_campo = pItem.fd_plan_control;
                    vm.item.fs_campo = pItem.fs_plan_control;
                    vm.item.na_campo = pItem.na_plan_control;
                    vm.item.ra_campo = pItem.ra_plan_control;
                    vm.item.us_campo = pItem.us_plan_control;
                    vm.item.co_campo = pItem.co_plan_control;
                }
                else if (num == 9) {
                    vm.item.titulo = 'Actualización HIOE';
                    vm.item.campo = pItem.actualizacion_hioe;
                    vm.item.es_campo = pItem.es_actualizacion_hioe;
                    vm.item.fd_campo = pItem.fd_actualizacion_hioe;
                    vm.item.fs_campo = pItem.fs_actualizacion_hioe;
                    vm.item.na_campo = pItem.na_actualizacion_hioe;
                    vm.item.ra_campo = pItem.ra_actualizacion_hioe;
                    vm.item.us_campo = pItem.us_actualizacion_hioe;
                    vm.item.co_campo = pItem.co_actualizacion_hioe;
                }
                else if (num == 10) {
                    vm.item.titulo = 'Lecciones Aprendidas';
                    vm.item.campo = pItem.lecciones_aprendidas;
                    vm.item.es_campo = pItem.es_lecciones_aprendidas;
                    vm.item.fd_campo = pItem.fd_lecciones_aprendidas;
                    vm.item.fs_campo = pItem.fs_lecciones_aprendidas;
                    vm.item.na_campo = pItem.na_lecciones_aprendidas;
                    vm.item.ra_campo = pItem.ra_lecciones_aprendidas;
                    vm.item.us_campo = pItem.us_lecciones_aprendidas;
                    vm.item.co_campo = pItem.co_lecciones_aprendidas;
                }

            }
            catch (ex) {
                Ex.mensajes(ex.message, 4);
                Ex.load(false);
            }

            Ex.load(false);
            $scope.modalNotas.open();
        };

        var init = function () {
            vm.consultar();
        }


        init();


    }
})();
