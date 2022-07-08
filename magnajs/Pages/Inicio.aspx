<%@ Page Title="" Language="C#" MasterPageFile="~/includes/magnajs.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="magnajs.Pages.Inicio" %>


<asp:Content ID="Content1" ContentPlaceHolderID="main" runat="server">
    <div class="view dashboard" ng-controller="inicioController as vm" style="margin-top: 0px;">
        <h1>{{vm.titulo}}</h1>
        <div class="row" style="margin-top: 0px;">
            <div class="col-12 col-lg-8 col-md-6"></div>
            <div class="col-12 col-lg-4 col-md-6">
                <div class="summary-boxes" layout="row" layout-align="space-between center" style="margin-top: 0px; margin-bottom: 8px;">
                    <div class="summary-box summary-amount">
                        <div class="summary-box-main">
                            <div class="summary-value">{{vm.verde}}</div>
                        </div>
                        <div class="summary-box-footer">On Time</div>
                    </div>
                    <div class="summary-box summary-total">
                        <div class="summary-box-main">
                            <div class="summary-value">{{vm.amarillo}}</div>
                        </div>
                        <div class="summary-box-footer">On Going</div>
                    </div>
                    <div class="summary-box summary-pending">
                        <div class="summary-box-main">
                            <div class="summary-value">{{vm.rojo}}</div>
                        </div>
                        <div class="summary-box-footer">Delayed</div>
                    </div>
                </div>
            </div>
        </div>
        <div id="Home" class="mail-box padding-10 wrapper border-bottom" style="margin-top: 0px;">
            <br />
            <div class="md-whiteframe-1dp">
                <h2><%= this.GetMessage("TituloGrid") %></h2>
            </div>
            <br />
            <div ui-table="vm.principal" st-fixed style="width: 100%">
                <table class="jsgrid-table" style="width: 3200px; min-width: 3200px"
                    st-table="vm.principal" st-safe-src="vm.principal_">
                    <thead>
                        <tr>
                            <th colspan="9"></th>
                            <th colspan="10" class="text-center" style="background-color: gainsboro; font-weight: bold;"><%= this.GetMessage("gvGeneral-TiempoObjetivo") %></th>
                            <th></th>
                            <th style="background-color: forestgreen; font-weight: bold;" class="text-center">G</th>
                            <th colspan="2" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-Completo") %></th>
                            <th></th>
                        </tr>
                        <tr>
                            <th colspan="9"></th>
                            <th class="text-center" style="background-color: gainsboro; font-weight: bold;">24H</th>
                            <th class="text-center" style="background-color: gainsboro; font-weight: bold;">7D</th>
                            <th class="text-center" style="background-color: gainsboro; font-weight: bold;" colspan="4">14D</th>
                            <th class="text-center" style="background-color: gainsboro; font-weight: bold;">34D</th>
                            <th class="text-center" style="background-color: gainsboro; font-weight: bold;" colspan="2">35D</th>
                            <th class="text-center" style="background-color: gainsboro; font-weight: bold;">40D</th>
                            <th></th>
                            <th class="text-center" style="font-weight: bold;">N/A</th>
                            <th colspan="2" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-NoAplica") %></th>
                            <th></th>
                        </tr>
                        <tr style="background-color: gainsboro;">
                            <th ui-field width="50" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-Item") %></th>
                            <th ui-field width="50" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-FechaInicio") %></th>
                            <th ui-field width="70" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-ReportadoPor") %></th>
                            <th ui-field width="70" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-QuienRespondio") %></th>
                            <th ui-field width="70" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-TipoReclamo") %></th>
                            <th ui-field width="130" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-Modelo") %></th>
                            <th ui-field width="300" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-DescripcionProblema") %></th>
                            <th ui-field width="50" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral->ResponsableRespuesta") %></th>
                            <th ui-field width="50" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-ProximaFecha") %></th>
                            <th ui-field width="70" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-PuntoQuiebre") %></th>
                            <th ui-field width="70" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-CausaRaiz") %></th>
                            <th ui-field width="70" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-AccionesCorrectivas") %></th>
                            <th ui-field width="70" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-QualityFocus") %></th>
                            <th ui-field width="70" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-Deteccion") %></th>
                            <th ui-field width="70" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-AuditoriaCapas") %></th>
                            <th ui-field width="70" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-ValidacionAcciones") %></th>
                            <th ui-field width="70" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-PlanControl") %></th>
                            <th ui-field width="70" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-ActualizacionHIOE") %></th>
                            <th ui-field width="70" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-LeccionesAprendidas") %></th>
                            <th ui-field width="100" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-PlanAccion") %></th>
                            <th ui-field width="50" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-FechaPropuestaCierre") %></th>
                            <th ui-field width="50" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-FechaRealCierre") %></th>
                            <th ui-field width="50" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-EstatusGlobal") %></th>
                            <th ui-field width="100" class="text-center" style="font-weight: bold;"><%= this.GetMessage("gvGeneral-Departamento") %></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr ng-repeat="item in vm.principal">
                            <td st-ratio="50" class="text-center">{{item.cve}}</td>
                            <td st-ratio="50" class="text-center">{{item.fecha_creacion}}</td>
                            <td st-ratio="70" class="text-center">{{item.identifica_falla}}</td>
                            <td st-ratio="70" class="text-center">{{item.usuario_creacion}}</td>
                            <td st-ratio="70" class="text-center">{{item.nombre_alerta}}</td>
                            <td st-ratio="130" class="text-center">{{item.nombre_numero_parte}}</td>
                            <td st-ratio="300">{{item.descripcion_falla}}</td>
                            <td st-ratio="50" class="text-center">{{item.supervisor_verifico}}</td>
                            <td st-ratio="50" class="text-center">{{item.inicio_campana}}</td>
                            <td st-ratio="70" class="text-center {{item.fd_punto_quiebre}}">
                                <table width="100%">
                                    <tr>
                                        <td width="90%" style="font-weight: 600;">{{item.punto_quiebre}}</td>
                                    </tr>
                                </table>
                                <table align="center" width="70px">
                                    <tr ng-if="item.es_punto_quiebre != null">
                                        <td width="90%" class="resultado">{{item.es_punto_quiebre}}</td>
                                    </tr>
                                    <tr ng-if="((vm.usuario.Loggeado && vm.usuario.EsAprobador && item.na_punto_quiebre != null) || (vm.usuario.Loggeado && vm.usuario.EsCaptura))">
                                        <td>
                                            <button type="button" class="btn btn-link" ng-click="vm.openModalNotas(item, 1)">
                                                <img src="../images/approve_reject.png" width="24px" />
                                            </button>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td st-ratio="70" class="text-center {{item.fd_causa_raiz}}">
                                <table width="100%">
                                    <tr>
                                        <td width="90%" style="font-weight: 600;">{{item.causa_raiz}}</td>
                                    </tr>
                                </table>
                                <table align="center" width="70px">
                                    <tr ng-if="item.es_causa_raiz != null">
                                        <td width="90%" class="resultado">{{item.es_causa_raiz}}</td>
                                    </tr>
                                    <tr ng-if="((vm.usuario.Loggeado && vm.usuario.EsAprobador && item.na_causa_raiz != null) || (vm.usuario.Loggeado && vm.usuario.EsCaptura))">
                                        <td>
                                            <button type="button" class="btn btn-link" ng-click="vm.openModalNotas(item, 2)">
                                                <img src="../images/approve_reject.png" width="24px" />
                                            </button>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td st-ratio="70" class="text-center {{item.fd_acciones_correctivas}}">
                                <table width="100%">
                                    <tr>
                                        <td width="90%" style="font-weight: 600;">{{item.acciones_correctivas}}</td>
                                    </tr>
                                </table>
                                <table align="center" width="70px">
                                    <tr ng-if="item.es_acciones_correctivas != null">
                                        <td width="90%" class="resultado">{{item.es_acciones_correctivas}}</td>
                                    </tr>
                                    <tr ng-if="((vm.usuario.Loggeado && vm.usuario.EsAprobador && item.na_acciones_correctivas != null) || (vm.usuario.Loggeado && vm.usuario.EsCaptura))">
                                        <td>
                                            <button type="button" class="btn btn-link" ng-click="vm.openModalNotas(item, 3)">
                                                <img src="../images/approve_reject.png" width="24px" />
                                            </button>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td st-ratio="70" class="text-center {{item.fd_quality_focus}}">
                                <table width="100%">
                                    <tr>
                                        <td width="90%" style="font-weight: 600;">{{item.quality_focus}}</td>
                                    </tr>
                                </table>
                                <table align="center" width="70px">
                                    <tr ng-if="item.es_quality_focus != null">
                                        <td width="90%" class="resultado">{{item.es_quality_focus}}</td>
                                    </tr>
                                    <tr ng-if="((vm.usuario.Loggeado && vm.usuario.EsAprobador && item.na_quality_focus != null) || (vm.usuario.Loggeado && vm.usuario.EsCaptura))">
                                        <td>
                                            <button type="button" class="btn btn-link" ng-click="vm.openModalNotas(item, 4)">
                                                <img src="../images/approve_reject.png" width="24px" />
                                            </button>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td st-ratio="70" class="text-center {{item.fd_deteccion}}">
                                <table width="100%">
                                    <tr>
                                        <td width="90%" style="font-weight: 600;">{{item.deteccion}}</td>
                                    </tr>
                                </table>
                                <table align="center" width="70px">
                                    <tr ng-if="item.es_deteccion != null">
                                        <td width="90%" class="resultado">{{item.es_deteccion}}</td>
                                    </tr>
                                    <tr ng-if="((vm.usuario.Loggeado && vm.usuario.EsAprobador && item.na_deteccion != null) || (vm.usuario.Loggeado && vm.usuario.EsCaptura))">
                                        <td>
                                            <button type="button" class="btn btn-link" ng-click="vm.openModalNotas(item, 5)">
                                                <img src="../images/approve_reject.png" width="24px" />
                                            </button>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td st-ratio="70" class="text-center {{item.fd_auditoria_capas}}">
                                <table width="100%">
                                    <tr>
                                        <td width="90%" style="font-weight: 600;">{{item.auditoria_capas}}</td>
                                    </tr>
                                </table>
                                <table align="center" width="70px">
                                    <tr ng-if="item.es_auditoria_capas != null">
                                        <td width="90%" class="resultado">{{item.es_auditoria_capas}}</td>
                                    </tr>
                                    <tr ng-if="((vm.usuario.Loggeado && vm.usuario.EsAprobador && item.na_auditoria_capas != null) || (vm.usuario.Loggeado && vm.usuario.EsCaptura))">
                                        <td>
                                            <button type="button" class="btn btn-link" ng-click="vm.openModalNotas(item, 6)">
                                                <img src="../images/approve_reject.png" width="24px" />
                                            </button>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td st-ratio="70" class="text-center {{item.fd_validacion_acciones}}">
                                <table width="100%">
                                    <tr>
                                        <td width="90%" style="font-weight: 600;">{{item.validacion_acciones}}</td>
                                    </tr>
                                </table>
                                <table align="center" width="70px">
                                    <tr ng-if="item.es_validacion_acciones != null">
                                        <td width="90%" class="resultado">{{item.es_validacion_acciones}}</td>
                                    </tr>
                                    <tr ng-if="((vm.usuario.Loggeado && vm.usuario.EsAprobador && item.na_validacion_acciones != null) || (vm.usuario.Loggeado && vm.usuario.EsCaptura))">
                                        <td>
                                            <button type="button" class="btn btn-link" ng-click="vm.openModalNotas(item, 7)">
                                                <img src="../images/approve_reject.png" width="24px" />
                                            </button>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td st-ratio="70" class="text-center {{item.fd_plan_control}}">
                                <table width="100%">
                                    <tr>
                                        <td width="90%" style="font-weight: 600;">{{item.plan_control}}</td>
                                    </tr>
                                </table>
                                <table align="center" width="70px">
                                    <tr ng-if="item.es_plan_control != null">
                                        <td width="90%" class="resultado">{{item.es_plan_control}}</td>
                                    </tr>
                                    <tr ng-if="((vm.usuario.Loggeado && vm.usuario.EsAprobador && item.na_plan_control != null) || (vm.usuario.Loggeado && vm.usuario.EsCaptura))">
                                        <td>
                                            <button type="button" class="btn btn-link" ng-click="vm.openModalNotas(item, 8)">
                                                <img src="../images/approve_reject.png" width="24px" />
                                            </button>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td st-ratio="70" class="text-center {{item.fd_actualizacion_hioe}}">
                                <table width="100%">
                                    <tr>
                                        <td width="90%" style="font-weight: 600;">{{item.actualizacion_hioe}}</td>
                                    </tr>
                                </table>
                                <table align="center" width="70px">
                                    <tr ng-if="item.es_actualizacion_hioe != null">
                                        <td width="90%" class="resultado">{{item.es_actualizacion_hioe}}</td>
                                    </tr>
                                    <tr ng-if="((vm.usuario.Loggeado && vm.usuario.EsAprobador && item.na_actualizacion_hioe != null) || (vm.usuario.Loggeado && vm.usuario.EsCaptura))">
                                        <td>
                                            <button type="button" class="btn btn-link" ng-click="vm.openModalNotas(item, 9)">
                                                <img src="../images/approve_reject.png" width="24px" />
                                            </button>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td st-ratio="70" class="text-center {{item.fd_lecciones_aprendidas}}">
                                <table width="100%">
                                    <tr>
                                        <td width="90%" style="font-weight: 600;">{{item.lecciones_aprendidas}}</td>
                                    </tr>
                                </table>
                                <table align="center" width="70px">
                                    <tr ng-if="item.es_lecciones_aprendidas != null">
                                        <td width="90%" class="resultado">{{item.es_lecciones_aprendidas}}</td>
                                    </tr>
                                    <tr ng-if="((vm.usuario.Loggeado && vm.usuario.EsAprobador && item.na_lecciones_aprendidas != null) || (vm.usuario.Loggeado && vm.usuario.EsCaptura))">
                                        <td>
                                            <button type="button" class="btn btn-link" ng-click="vm.openModalNotas(item, 10)">
                                                <img src="../images/approve_reject.png" width="24px" />
                                            </button>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td st-ratio="100">{{item.plan_accion}}</td>
                            <td st-ratio="50" class="text-center">{{item.fecha_propuesta_cierre}}</td>
                            <td st-ratio="50" class="text-center">{{item.fecha_real_cierre}}</td>
                            <td st-ratio="50" class="text-center {{item.estatus_global}}"></td>
                            <td st-ratio="100" class="text-center">{{item.nombre_lugar_falla}}</td>
                        </tr>
                        <tr ng-if="informaciongral.length == 0" class="nodata-row">
                            <td colspan="24" class="text-center">
                                <%=  this.GetCommonMessage("msgGridSinInformacion") %>
                            </td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="18">
                                <div st-pagination="10" st-items-by-page="100" st-template="../templates/pagination.html"></div>
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
        <ui-modal modal="modalNotas">
            <div class="modal-dialog" form="modalForm">
                <div class="modal-content" ng-form="notasForma">
                    <div class="modal-header">
                        <button type="button" class="close no-disabled" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title"><%= this.GetMessage("TituloModal") %></h4>
                    </div>

                    <div class="modal-body" ng-class="{'submitted': submitted}">
                        <table width="100%">
                            <tr>
                                <td width="20%"><%= this.GetMessage("lblTitulo") %></td>
                                <td width="80%" style="font-weight: 600;" colspan="2">{{vm.item.titulo}}</td>
                            </tr>
                            <tr>
                                <td width="20%"><%= this.GetMessage("lblFecha") %></td>
                                <td width="80%" style="font-weight: 600;" colspan="2">{{vm.item.campo}}</td>
                            </tr>
                            <tr>
                                <td width="20%"></td>
                                <td width="60%" colspan="2" style="padding: 10px 0px 0px 5px; font-weight: 600;">
                                    <table class="table" ng-show="((vm.usuario.Loggeado && vm.usuario.EsAprobador && vm.item.na_campo != null) || (vm.usuario.Loggeado && vm.usuario.EsCaptura))">
                                        <thead>
                                            <tr class="jsgrid-header-row" style="font-size: 16px">
                                                <th style="width: 60%"><%= this.GetMessage("lblArchivo") %></th>
                                                <th class="text-right" ng-hide="noEditable()">
                                                    <button type="button" class="btn btn-link no-disabled" ng-click="agregarArchivo()"
                                                        style="padding: 0">
                                                        <%= this.GetCommonMessage("lblTooltipAgregar") %>
                                                    </button>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr ng-repeat="item in vm.item.Archivos" ng-if="!item.EsEliminar">
                                                <td ng-hide="item.EsNuevo">
                                                    <button type="button" class="btn btn-link p-0 no-disabled" ng-click="openDocumento(item, 2)">
                                                        {{item.na_campo}}
                                                    </button>
                                                </td>
                                                <td ng-show="item.EsNuevo">
                                                    <ex-fileupload ng-model="item.na_campo" image-button="fa-upload" ng-if="((vm.usuario.Loggeado && vm.usuario.EsAprobador && item.na_campo != null) || (vm.usuario.Loggeado && vm.usuario.EsCaptura))"
                                                        download-button="fa-paperclip" on-success="setParametrosArchivo(response, item, 2)"
                                                        options="fileOptionsDetalle" parameters="fileParameters" open-file="openDocumento(item, 2)">
                                                    </ex-fileupload>
                                                </td>
                                                <td style="color: red" ng-hide="noEditable()">
                                                    <button type="button" class="btn btn-link no-disabled" ng-click="quitarArchivo(item, 2)">
                                                        <i class="glyphicon glyphicon-trash"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </td>
                                <td width="20%"></td>
                            </tr>
                            <tr>
                                <td width="20%"><%= this.GetMessage("lblComentarios") %></td>
                                <td width="80%" colspan="2"></td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <input type="text" ng-model="vm.item.co_campo" class="form-control no-disabled" ng-if="(vm.usuario.Loggeado && vm.usuario.EsAprobador && vm.item.na_campo != null)">
                                    <span ng-if="(vm.usuario.Loggeado && vm.usuario.EsCaptura)">{{vm.item.co_campo}}</span>
                                </td>
                            </tr>
                        </table>
                        <%--<table align="center" width="70px">
                            <tr ng-if="vm.item.es_campo != null">
                                <td width="90%" colspan="2" class="resultado">{{vm.item.es_campo}}</td>
                            </tr>                            
                        </table>--%>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-success" ng-click="vm.guardar()" ng-show="(vm.usuario.Loggeado && vm.usuario.EsCaptura && vm.item.es_campo != 'Aprobado')">
                            <%= this.GetCommonMessage("lblTooltipGuardar") %>
                        </button>
                        <button type="button" class="btn btn-danger" ng-click="vm.aprobar('Rechazado' , vm.item, vm.item.numero)" ng-show="(vm.item.es_campo == null || vm.item.es_campo == '') && vm.usuario.EsAprobador && vm.item.fs_campo != null">
                            <%= this.GetCommonMessage("lblTooltipRechazar") %>
                        </button>
                        <button type="button" class="btn btn-success" ng-click="vm.aprobar('Aprobado' , vm.item, vm.item.numero)" ng-show="(vm.item.es_campo == null || vm.item.es_campo == '') && vm.usuario.EsAprobador && vm.item.fs_campo != null">
                            <%= this.GetCommonMessage("lblTooltipAprobar") %>
                        </button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">
                            <%= this.GetCommonMessage("lblTooltipCerrar") %>
                        </button>
                    </div>
                </div>
            </div>
        </ui-modal>
        <script type="text/javascript" src="../Scripts/pages/inicioController.js?v=1.1<%=DateTime.Now.Millisecond %>"></script>
    </div>


</asp:Content>

