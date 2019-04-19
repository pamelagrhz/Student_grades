<%@ Page Language="C#" Inherits="CalificacionesAlumnos.Index2" %>
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
                                                <asp:Label ID="txtCalif"  runat="server" Text='<%# Eval("Calificacion")%>' />
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
                     
                </div>
                  <div class="row mt-3 ">
                     <div class="col">
                        <table class="table table-striped">
                              <thead>
                                <tr>
                                    <th colspan="2">
                                        <h2>Estadisticas</h2>
                                    </th>
                                </tr>
                                <tr>
                                  <th scope="col">Nombre</th>
                                  <th scope="col">Valor</th>
                                
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <th scope="row">Promedio</th>
                                  <td>
                                        <asp:Literal id="TextPromedio"runat="server"/>
                                    </td>
                                </tr>
                                <tr>
                                  <th scope="row">Minimo</th>
                                  <td><asp:Literal id="TextMinimo"runat="server"/></td>
                                </tr>
                                <tr>
                                  <th scope="row">Maximo</th>
                                  <td><asp:Literal id="TextMaximo"runat="server"/></td>
                                </tr>
                                <tr>
                                  <th scope="row">Moda</th>
                                  <td><asp:Literal id="TextModa"runat="server"/></td>
                                </tr>
                                 <tr>
                                  <th scope="row">Aprobados</th>
                                  <td><asp:Literal id="TextAprobados"runat="server"/></td>
                                </tr>
                                 <tr>
                                  <th scope="row">Reprobados</th>
                                  <td><asp:Literal id="TextReprobados"runat="server"/></td>
                                </tr>
                                 <tr>
                                  <th scope="row">Porcentaje Aprobados</th>
                                  <td><asp:Literal id="TextPAprobados"runat="server"/></td>
                                </tr>
                                 <tr>
                                  <th scope="row">Porcentaje Reprobados</th>
                                  <td><asp:Literal id="TextPReprobados" runat="server"/></td>
                                </tr>
                                 <tr>
                                  <th scope="row">Mejores Alumnos</th>
                                  <td><asp:Literal id="TextMAlumnos" runat="server"/></td>
                                </tr>
                                 <tr>
                                  <th scope="row">Peores ALumnos</th>
                                  <td><asp:Literal id="TextPAlumnos" runat="server"/></td>
                                </tr>
                              </tbody>
                            </table>
                     </div>
                </div>
                   
            </form>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
    