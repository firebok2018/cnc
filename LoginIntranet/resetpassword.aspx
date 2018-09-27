
<html lang="es" xml:lang="es" xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_sHead"><title>
	Clave Dinámica
</title><link href="css/Default.css" rel="stylesheet" type="text/css" /><link href="css/StyleSheet.css" rel="stylesheet" type="text/css" /><link href="css/commonCIBERTEC.css" rel="stylesheet" type="text/css" />
    
    
    <script type="text/javascript">
        if(history.forward(1)) {location.replace(history.forward(1))}
    </script> 

    <script language="javascript" type="text/javascript">
        function Page_onInit() {
            try {
		        Page_onLoad();
	        } catch(e) {}
        }

        function SoloNumeros(e) {
            var key;
            var keychar;

            if (window.event)
                key = window.event.keyCode;
            else if (e)
                key = e.which;
            else
                return true;
            keychar = String.fromCharCode(key);

            // teclas de control
            if ((key == null) || (key == 0) || (key == 8) || (key == 9) || (key == 13) || (key == 27))
                return true;
            // Numeros
            else if ((("0123456789").indexOf(keychar) > -1))
                return true;
            else
                return false;
        }
    </script>
    
    
    <script src="js/jquery-1.10.1.min.js"></script>
    
</head>
<body oncontextmenu="return false" onload="Page_onInit();" style="margin-left: 0px;
    margin-top: 0px; margin-right: 0px; background-color: #ffffff; margin-bottom: 0px;
    text-align: center;">
    <form name="aspnetForm" method="post" action="resetpassword.aspx" id="aspnetForm">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTk2MzA0MzA5OA9kFgJmD2QWAgIDD2QWAgIBD2QWBmYPD2QWAh4MYXV0b2NvbXBsZXRlBQNvZmZkAgEPD2QWAh8ABQNvZmZkAgIPZBYCAgEPD2QWAh8ABQNvZmZkGAEFHl9fQ29udHJvbHNSZXF1aXJlUG9zdEJhY2tLZXlfXxYBBSpjdGwwMCRDb250ZW50UGxhY2VIb2xkZXIxJGNoa0NsYXZlRGluYW1pY2HG7gvmZFH9NCPv87v7i5pQPTmADQ==" />

        <table border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
            <tr>
                <td align="center" height="12%">
                    <div class="WEB_contenedorCabecera">
                        <div class="WEB_logoSocrates" style="right: 22px; top: 30px">
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td height="8%">
                    <table border="0" cellpadding="0" cellspacing="0" height="2%" width="100%">
                        <tr>
                            <td>
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" height="70%">
                    <table border="0" cellpadding="0" cellspacing="0" height="70%" width="335px">
                        <tr valign="top">
                            <td width="340px">
                            </td>
                            <td style="background-color: #ffffff; height: auto; padding: 18px 0 10px 0;" valign="top">
                                
    <script language="javascript">
        $().ready(function () {

            $("#errorUsuario").hide();
            $("#errorCorreo").hide();
            $("#errorClaveDinamica").hide();

            $("#ctl00_ContentPlaceHolder1_txtUsuario").focus();

            if ($("#ctl00_ContentPlaceHolder1_chkClaveDinamica").prop('checked')) {
                $("#ctl00_ContentPlaceHolder1_txtClaveDinamica").removeAttr('disabled');
                $("#ctl00_ContentPlaceHolder1_txtClaveDinamica").css('background-color', 'white');
                $("#ctl00_ContentPlaceHolder1_txtCorreo").prop('disabled', 'disabled');
                $("#ctl00_ContentPlaceHolder1_txtCorreo").css('background-color', 'gray');
            } else {
                $("#ctl00_ContentPlaceHolder1_txtClaveDinamica").prop('disabled', 'disabled');
                $("#ctl00_ContentPlaceHolder1_txtClaveDinamica").css('background-color', 'gray');
                $("#ctl00_ContentPlaceHolder1_txtCorreo").removeAttr('disabled');
                $("#ctl00_ContentPlaceHolder1_txtCorreo").css('background-color', 'white');
            }


            $("#ctl00_ContentPlaceHolder1_txtCorreo").keyup(function () {            
    	        //CSC-00261522-00
                //var regex = new RegExp(/[^0-9a-zA-Z@.-_]/g);
                var regex = new RegExp(/[^0-9a-zA-Z@.\-_]/g);                
                var containsNonNumeric = this.value.match(regex);
                if (containsNonNumeric)
                    this.value = this.value.replace(regex, '');
            });

            $("#ctl00_ContentPlaceHolder1_txtClaveDinamica").keyup(function () {
                var regex = new RegExp(/[^0-9]/g);
                var containsNonNumeric = this.value.match(regex);
                if (containsNonNumeric)
                    this.value = this.value.replace(regex, '');
            });


            $("#ctl00_ContentPlaceHolder1_chkClaveDinamica").change(function () {


                if (this.checked) {
                      $("#ctl00_ContentPlaceHolder1_txtClaveDinamica").removeAttr('disabled');
                    $("#ctl00_ContentPlaceHolder1_txtClaveDinamica").css('background-color', 'white');
                    $("#ctl00_ContentPlaceHolder1_txtCorreo").prop('disabled', 'disabled');
                    $("#ctl00_ContentPlaceHolder1_txtCorreo").css('background-color', 'gray');
                } else {
                    $("#ctl00_ContentPlaceHolder1_txtClaveDinamica").prop('disabled', 'disabled');
                    $("#ctl00_ContentPlaceHolder1_txtClaveDinamica").css('background-color', 'gray');
                    $("#ctl00_ContentPlaceHolder1_txtCorreo").removeAttr('disabled');
                    $("#ctl00_ContentPlaceHolder1_txtCorreo").css('background-color', 'white');
                    $("#ctl00_ContentPlaceHolder1_txtCorreo").focus();
                }


            })




        });

        function validarFormulario(sender, args) {

            $("#errorUsuario").hide();
            $("#errorCorreo").hide();
            $("#errorClaveDinamica").hide();

            if ($.trim($("#ctl00_ContentPlaceHolder1_txtUsuario").val()) <= 0) {
                $("#errorUsuario").show();
                args.IsValid = false;
                return;
            }


            if (!$("#ctl00_ContentPlaceHolder1_chkClaveDinamica").prop('checked')) {

                if ($.trim($("#ctl00_ContentPlaceHolder1_txtCorreo").val()) <= 0) {
                    $("#errorCorreo").show() ;
                    args.IsValid = false;
                    return;
                }


                var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;

                if (!emailReg.test($("#ctl00_ContentPlaceHolder1_txtCorreo").val())) {
                    $("#errorCorreo").show();
                    args.IsValid = false;
                    return;
                }
            } else {
                if ($.trim($("#ctl00_ContentPlaceHolder1_txtClaveDinamica").val()) <= 0) {
                    $("#errorClaveDinamica").show();
                    args.IsValid = false;
                    return;
                }
            }

            args.IsValid = true;
        }
    </script>
    <table border="0" cellpadding="0" cellspacing="0" style="border: Solid; border-width: 0px;
            width: 335px; font-family: Verdana; font-size: 10pt; background-color: #e8e8e8;
            border-color: White">
                <tr>
                    <td align="center" style="border: 0px;border-spacing:0; height: 41px;">
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td style="background-image:url(images/otra1.GIF); height: 40px; width: 20px;"></td>
                                <td style="background-image:url(images/otra2.GIF); height: 40px; width: 300px;" align="left">
                                    <font color="white" face="times new roman" size="5">
                                        ¿Olvidaste tu Clave?
                                    </font>
                                </td>
                                <td style="background-image:url(images/otra3.GIF); height: 40px; width: 20px;"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="height: 137px; width: 285px;">
                        <table border="0" cellpadding="0" style="width: 348px">
                            <tr style="background: #e8e8e8; border: 0;">
                                <td >
                                    <table align="center" border="0" width="300px">
                                        <tr>
                                            <td align="left" class="textoBold" style="width: 80px; height: 40px;" valign="middle">Usuario</td>
                                            <td style="width: 180px" valign="middle">
                                                <input name="ctl00$ContentPlaceHolder1$txtUsuario" type="text" maxlength="10" id="ctl00_ContentPlaceHolder1_txtUsuario" class="WEB_cajaLogin" autocomplete="off" />                                                
                                           </td>
                                           <td><span id="errorUsuario" class="MensajeError">(*)</span></td>
                                        </tr>
 
                                        <tr>
                                            <td align="left" class="textoBold" style="width: 80px; height: 40px;" valign="middle">Correo Personal</td>
                                            <td style="width: 180px" valign="middle">
                                                <input name="ctl00$ContentPlaceHolder1$txtCorreo" type="text" maxlength="50" id="ctl00_ContentPlaceHolder1_txtCorreo" class="WEB_cajaLogin" autocomplete="off" />                                                    
                                            </td>
                                            <td><span id="errorCorreo" class="MensajeError">(*)</span></td>
                                        </tr>
                                        </table>
                                        <div id="ctl00_ContentPlaceHolder1_pnlDatos">
	
                                        
                                          <table align="center" border="0" width="300px">
                                        <tr style="background: #e8e8e8; border: 0;">
                                            <td align="left" class="textoNormal" style="width: 260px; height: 40px;" valign="middle" colspan="2">
                                                <span class="textoBold"><input id="ctl00_ContentPlaceHolder1_chkClaveDinamica" type="checkbox" name="ctl00$ContentPlaceHolder1$chkClaveDinamica" /></span>                                            
                                                    Si tienes Smartphone y tienes instalada la aplicación de 'Clave Cibertec'           
                                            </td>
                                        </tr>
 
                                        <tr>
                                            <td align="left" class="textoBold" style="width: 80px; height: 40px;" valign="middle">Clave Dinámica</td>
                                            <td style="width: 180px" valign="middle">
                                                <input name="ctl00$ContentPlaceHolder1$txtClaveDinamica" type="password" maxlength="8" id="ctl00_ContentPlaceHolder1_txtClaveDinamica" class="WEB_cajaLogin" autocomplete="off" />
                                                    
                                           </td>
                                           <td><span id="errorClaveDinamica" class="MensajeError">(*)</span></td>
                                        </tr>
                                    </table>

                                    
</div>
                                </td>
</tr>
                           
                            <tr style="background: #e8e8e8; border: 0;">
                           <td align="right" style="height: 41px"> 
                                    <input type="submit" name="ctl00$ContentPlaceHolder1$btnContinuar" value="Continuar" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$btnContinuar&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" id="ctl00_ContentPlaceHolder1_btnContinuar" class="botonUPC" />
                                    &nbsp;
                                    <input type="submit" name="ctl00$ContentPlaceHolder1$btnCancel" value="Cancelar" id="ctl00_ContentPlaceHolder1_btnCancel" class="botonUPC" />

                                    &nbsp;

                                </td>
                            </tr>
                                                                                              </table>
                    </td>
                </tr>
            </table>
        <div style="padding-left: 8px; text-align: justify;">
            <span id="ctl00_ContentPlaceHolder1_lblError2" style="display:inline-block;"><b><font color="Red"></font></b></span>
        </div>
                               <br />

                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
            <tr bgcolor="#DDDDDD">
                <td height="7%">
                    <table border="0">
                        <tr>
                            <td valign="middle" width="500px">
                                <img alt="" src='images/logo_foot_cib.gif' />
                            </td>
                            <td align="right" width="100%">
                                <a href="../Programas/Ut005.asp" target="_blank">
                                    <b>
                                        <font color="#9A9A9A" face="arial" size="1">
                                            Sugerencias
                                        </font>
                                    </b>
                                </a>
                                &nbsp;&nbsp;    
                                <a href="http://www.cibertec.edu.pe/home_cib.aspx" target="_blank">
                                    <b>
                                        <font color="#9A9A9A" face="arial" size="1">
                                            Home CIBERTEC
                                        </font>
                                    </b>
                                </a>
                                &nbsp;&nbsp; 
                                <a href="../Ayuda/Ayuda.asp" target="_blank">
                                    <b>
                                        <font color="#9A9A9A" face="arial" size="1">
                                            Ayuda
                                        </font>
                                    </b>
                               </a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBwKq7YCeDQKnqqeUBALYnKLqBwKTrO2NBQKWoNH6CAKn3pftDAKG1qD0CTyEGKy20Ffei02LBIdjx/kG8QV6" /></form>
</body>
</html>
