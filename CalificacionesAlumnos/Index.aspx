<%@ Page Language="C#" Inherits="CalificacionesAlumnos.Index" %>
<!DOCTYPE html>
<html>
    <head runat="server">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1"> 
        <title>Calificaciones Alumnos</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <form id="form1" runat="server">
                
                <div class="row">
                    <div class="col">
                        <asp:Repeater ID="RepetidorAlumnos" runat="server"> 
                            <HeaderTemplate>
                                <table class="table table-striped table-dark" >  
                                    <thead>
                                          <tr>
                                            <th colspan="2">
                                                <h2>CALIFICACIONES DE ALUMNOS </h2>
                                            </th>
                                          </tr>
                                        <tr>
                                            
                                            <th>
                                                #
                                            </th>
                                            <th>
                                                Alumno 
                                            </th> 
                                            <th>
                                                Calificación
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                               </HeaderTemplate> 
                               <ItemTemplate>
                                    <tr>
                                        <th><%# Container.ItemIndex + 1 %></th>
                                        <td>
                                            <div class="form-group">
                                                <asp:Label ID="lblNombre" runat="server" Text='<%# Eval("Nombre") %>' />
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <asp:TextBox ID="TextCalif" CssClass="form-control" placeholder="Calificación" runat="server" value='<%# Eval("Calificacion")%>' />
                                            </div>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                        </tbody>
                                    </table>
                                </FooterTemplate>
                        </asp:Repeater>   
                    </div>
                </div>
                <div class="row">
                     <div class="col">
                        <asp:Button ID="btnAceptar" CssClass="btn btn-primary" runat="server" Text="Aceptar" OnClick="Registrar_Calificaciones"/>
                     </div>
                </div>
                  <div class="row mt-3">
                     <div class="col">
                        
                     </div>
                </div>
                   
            </form>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
    