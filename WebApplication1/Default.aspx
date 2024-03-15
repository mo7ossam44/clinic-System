<%@ Page Title="Arak Clinic" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <table class="w-100" style="margin-bottom: 57px">
            <tr>
                <td style="font-size: x-large; font-weight: bold; color: #333333">
                    <br />
                    ||
                    Patient Personal Data ||<br />
                    <table class="w-100">
                        <tr>
                            <td style="font-size: medium; width: 3661px; font-weight: normal;">ID</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                            </td>
                            <td style="font-size: medium; width: 1635px; font-weight: normal;">&nbsp;&nbsp;&nbsp; Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                            <td style="width: 456px; height: 68px;"></td>
                        </tr>
                        <tr>
                            <td style="font-size: medium; width: 3661px; font-weight: normal; height: 78px;">Phone / Whatsapp</td>
                            <td style="height: 78px">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                            <td style="font-size: medium; width: 1635px; font-weight: normal; height: 78px;">&nbsp;&nbsp;&nbsp; Address</td>
                            <td style="height: 78px">
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                            <td style="width: 456px; height: 78px;"></td>
                        </tr>
                        <tr>
                            <td style="font-size: medium; width: 3661px; font-weight: normal; height: 78px;">Occupation</td>
                            <td style="height: 78px">
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                            <td style="font-size: medium; width: 1635px; font-weight: normal; height: 78px;">&nbsp;&nbsp;&nbsp; Age</td>
                            <td style="height: 78px">
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                            <td style="width: 456px; height: 78px;"></td>
                        </tr>
                        <tr>
                            <td style="font-size: medium; width: 3661px; font-weight: normal; height: 70px;">Gender </td>
                            <td style="height: 70px; ">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Size="Medium" RepeatDirection="Horizontal" Width="302px">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td style="font-size: medium; width: 1635px; font-weight: normal; height: 70px;">&nbsp;&nbsp;&nbsp; Joining Date </td>
                            <td style="height: 70px">
                                <asp:TextBox ID="TextBox10" runat="server" type="date" Width="362px" ></asp:TextBox>
                            </td>
                            <td style="height: 70px; width: 456px"></td>
                        </tr>
                        <tr>
                            <td style="font-size: medium; width: 3661px; font-weight: normal; height: 92px;">Date</td>
                            <td style="height: 92px">
                                <asp:TextBox ID="TextBox9" runat="server" type="date" Width="362px" ></asp:TextBox>
                            </td>
                            <td style="font-size: medium; width: 1635px; font-weight: normal; height: 92px;">&nbsp;&nbsp;&nbsp;&nbsp; Time</td>
                            <td style="height: 92px">
                                <asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>
                            </td>
                            <td style="width: 456px; height: 92px;"></td>
                        </tr>
                        </table>
                    <table class="w-100">
                        <tr>
                            <td style="font-size: medium; width: 307px; font-weight: normal; height: 92px;">Dentist ID</td>
                            <td style="width: 308px">
                                <asp:TextBox ID="TextBox8" runat="server" OnTextChanged="TextBox8_TextChanged" style="margin-left: 36" Width="317px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <p>
                    </p>
                    <table class="w-100">
                        <tr>
                            <td style="width: 261px">
                                <asp:Button ID="Button1" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button1_Click" Text="Save Personal Data" Width="249px" />
                            </td>
                            <td style="width: 276px">
                                <asp:Button ID="Button2" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button2_Click" Text="Update Personal Data" Width="264px" />
                            </td>
                            <td style="width: 110px">
                                <asp:Button ID="Button4" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button4_Click" Text="Search" Width="101px" />
                            </td>
                            <td style="width: 151px">
                                <asp:Button ID="Button3" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button3_Click" OnClientClick="return confirm('Are You Sure?')" Text="Delete" Width="142px" />
                            </td>
                            <td>
                                <asp:Button ID="Button5" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button5_Click" Text="Load" Width="110px" />
                            </td>
                            <td>
                                <asp:Button ID="Button7" runat="server" BackColor="#333333" CssClass="offset-sm-0" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button7_Click" style="margin-left: 9px" Text="Cases" Width="233px" />
                            </td>
                        </tr>
                    </table>
                    <table class="w-100">
                        <tr>
                            <td style="width: 340px">
                                <br />
                            </td>
                            <td>
                                <br />
                            </td>
                        </tr>
                    </table>
                    <p>
                        Patients</p>
                    <asp:GridView ID="GridView1" runat="server" Height="200px" Width="1145px">
                        <Columns>
                            <asp:BoundField />
                            <asp:BoundField />
                            <asp:BoundField />
                        </Columns>
                        <HeaderStyle BackColor="#666666" Font-Size="Medium" ForeColor="White" />
                        <PagerStyle Font-Size="Large" />
                        <RowStyle Font-Size="Small" />
                    </asp:GridView>
                    <table class="w-100">
                        <tr>
                            <td style="font-size: large; width: 3847px;">
                                <br />
                                <br />
                                ||
                                Patient Medical History ||</td>
                            <td>&nbsp;</td>
                            <td style="width: 4835px">&nbsp;</td>
                            <td style="width: 433px">&nbsp;</td>
                            <td style="width: 456px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="font-size: medium; width: 3847px;">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td style="width: 4835px">&nbsp;</td>
                            <td style="width: 433px">&nbsp;</td>
                            <td style="width: 456px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="font-size: medium; font-weight: normal; height: 84px; width: 3847px;">Previous Surgeries?<br />
                            </td>
                            <td style="height: 84px; ">
                                <br />
                                <asp:TextBox ID="TextBox11" runat="server" OnTextChanged="TextBox11_TextChanged"></asp:TextBox>
                                <br />
                            </td>
                            <td style="height: 84px; font-size: medium; width: 4835px; font-weight: normal;">&nbsp;&nbsp;&nbsp;&nbsp; Medications?</td>
                            <td style="height: 84px; width: 433px;">
                                <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                            </td>
                            <td style="width: 456px; height: 84px"></td>
                        </tr>
                        <tr>
                            <td style="font-size: medium; width: 3847px; font-weight: normal;">-What was operation?</td>
                            <td>
                                <br />
                                <asp:TextBox ID="TextBox12" runat="server" OnTextChanged="TextBox12_TextChanged"></asp:TextBox>
                                <br />
                            </td>
                            <td style="font-size: medium; width: 4835px; font-weight: normal;">&nbsp;&nbsp;&nbsp;&nbsp; -What is the medications?&nbsp;</td>
                            <td style="width: 433px">
                                <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
                            </td>
                            <td style="width: 456px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="font-size: medium; width: 3847px; height: 68px; font-weight: normal;">-Date of last operation&nbsp;</td>
                            <td style="height: 68px;">
                                <br />
                                <asp:TextBox ID="TextBox13" runat="server" type="date" CssClass="offset-sm-0" OnTextChanged="TextBox13_TextChanged"></asp:TextBox>
                                <br />
                            </td>
                            <td style="width: 4835px; font-size: medium; font-weight: normal; height: 68px;">&nbsp;&nbsp;&nbsp;&nbsp; -Patient Name</td>
                            <td style="width: 433px; height: 68px">
                                <asp:TextBox ID="TextBox26" runat="server" OnTextChanged="TextBox26_TextChanged" Width="317px"></asp:TextBox>
                            </td>
                            <td style="width: 456px; height: 68px;"></td>
                        </tr>
                        <tr>
                            <td style="font-size: medium; width: 300px; font-weight: normal;">-Operator name&amp;address</td>
                            <td style="height: 62px; ">
                                <br />
                                <asp:TextBox ID="TextBox14" runat="server" CssClass="offset-sm-0" OnTextChanged="TextBox14_TextChanged" Width="344px"></asp:TextBox>
                                <br />
                            </td>
                            <td style="height: 62px; width: 4835px"></td>
                            <td style="height: 62px; width: 433px;"></td>
                            <td style="width: 456px; height: 62px"></td>
                        </tr>
                        </table>
                    <table class="w-100">
                        <tr>
                            <td style="width: 1637px; font-size: medium; height: 32px; font-weight: normal;">Chronic Diseases?</td>
                            <td style="width: 660px; height: 32px;">
                                <br />
                                <asp:TextBox ID="TextBox17" runat="server" OnTextChanged="TextBox17_TextChanged" CssClass="offset-sm-0"></asp:TextBox>
                                <br />
                            </td>
                            <td style="width: 1635px; font-size: medium; height: 32px; font-weight: normal;">Accidents?<br />
                            </td>
                            <td style="height: 32px">
                                <asp:TextBox ID="TextBox20" runat="server" OnTextChanged="TextBox17_TextChanged"></asp:TextBox>
                            </td>
                            <td style="width: 347px; height: 32px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 1637px; font-size: medium; height: 44px; font-weight: normal;">-what is the disease?<br />
                                </td>
                            <td style="width: 660px; height: 44px;">
                                <br />
                                <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                                <br />
                            </td>
                            <td style="width: 1635px; font-size: medium; height: 44px; font-weight: normal;">-Date of Accidents?<br />
                            </td>
                            <td style="height: 44px">
                                <asp:TextBox ID="TextBox21" runat="server" type="date" OnTextChanged="TextBox17_TextChanged"></asp:TextBox>
                            </td>
                            <td style="width: 347px; height: 44px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 1637px; font-size: medium; font-weight: normal;">-what is the medications for it?<br />
                            </td>
                            <td style="width: 660px">
                                <br />
                                <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
                                <br />
                            </td>
                            <td style="width: 1635px; font-size: medium; font-weight: normal;">-Recent History?</td>
                            <td>
                                <asp:TextBox ID="TextBox30" runat="server" type="date"></asp:TextBox>
                            </td>
                            <td style="width: 347px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 1637px; font-size: medium; font-weight: normal;">-Did you have a breakfast / lunch?<br />
                            </td>
                            <td style="width: 660px">
                                <br />
                                <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                                <br />
                            </td>
                            <td style="width: 1635px; font-size: medium; font-weight: normal;">-Smoker?</td>
                            <td>
                                <asp:RadioButtonList ID="RadioButtonList2" runat="server" Font-Size="Small" RepeatDirection="Horizontal" Width="267px">
                                    <asp:ListItem>Yes</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td style="width: 347px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 1637px; font-size: medium; font-weight: normal;">-Measurments of D.M or HyperT.</td>
                            <td style="width: 660px">
                                <br />
                                <asp:TextBox ID="TextBox29" runat="server" Height="69px"></asp:TextBox>
                                <br />
                            </td>
                            <td style="width: 1635px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td style="width: 347px">&nbsp;</td>
                        </tr>
                        </table>
                    <p>
                    </p>
                    <table class="w-100">
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <table class="w-100">
                        <tr>
                            <td style="width: 258px">
                                <asp:Button ID="Button8" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button8_Click" Text="Save Medical History" Width="240px" />
                            </td>
                            <td style="width: 276px">
                                <asp:Button ID="Button9" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button9_Click" Text="Update Medical History" Width="254px" />
                            </td>
                            <td style="width: 123px">
                                <asp:Button ID="Button10" runat="server" BackColor="#333333" CssClass="offset-sm-0" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button10_Click" Text="Search" Width="101px" />
                            </td>
                            <td style="width: 163px">
                                <asp:Button ID="Button11" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button11_Click" OnClientClick="return confirm('Are You Sure?')" Text="Delete" Width="142px" />
                            </td>
                            <td>
                                <asp:Button ID="Button12" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button12_Click" Text="Load" Width="109px" />
                            </td>
                        </tr>
                    </table>
                    <table class="w-100">
                        <tr>
                            <td style="width: 5005px">&nbsp;</td>
                            <td style="width: 308px">&nbsp;</td>
                            <td style="width: 1635px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td style="width: 456px">&nbsp;</td>
                        </tr>
                        </table>
                    <p>
                        <asp:GridView ID="GridView2" runat="server" Height="16px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="1115px">
                            <HeaderStyle BackColor="#666666" Font-Size="Medium" ForeColor="White" />
                            <RowStyle Font-Size="Small" />
                        </asp:GridView>
                    </p>
                    <table class="w-100">
                        <tr>
                            <td style="width: 5005px">&nbsp;</td>
                            <td style="width: 308px">&nbsp;</td>
                            <td style="width: 1958px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td style="width: 456px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 5005px; font-size: large;">|| Patient Dental History ||</td>
                            <td style="width: 308px">&nbsp;</td>
                            <td style="width: 1958px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td style="width: 456px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 5005px; font-size: medium; font-weight: normal;">-Is it the first dental visit?&nbsp;</td>
                            <td style="width: 308px">
                                <asp:TextBox ID="TextBox22" runat="server" OnTextChanged="TextBox22_TextChanged"></asp:TextBox>
                            </td>
                            <td style="width: 1958px; height: 62px; font-size: medium; font-weight: normal;">&nbsp; -About us</td>
                            <td>
                                <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
                            </td>
                            <td style="width: 456px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 5005px; font-size: medium; font-weight: normal;">-What was the last operation &amp; Date of it?</td>
                            <td style="width: 308px">
                                <br />
                                <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
                                <br />
                            </td>
                            <td style="width: 1958px; font-weight: normal; font-size: medium;">&nbsp; -Patient Name</td>
                            <td>
                                <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                            </td>
                            <td style="width: 456px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 5005px; font-size: medium; font-weight: normal;">-Allergies?</td>
                            <td style="width: 308px">
                                <br />
                                <asp:TextBox ID="TextBox23" runat="server" OnTextChanged="TextBox22_TextChanged"></asp:TextBox>
                                <br />
                            </td>
                            <td style="width: 1958px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td style="width: 456px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 5005px; font-size: medium; font-weight: normal;">-Do you brush&nbsp;your teeth regularly?</td>
                            <td style="width: 308px">
                                <br />
                                <asp:TextBox ID="TextBox24" runat="server" OnTextChanged="TextBox22_TextChanged"></asp:TextBox>
                                <br />
                            </td>
                            <td style="width: 1958px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td style="width: 456px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 5005px">&nbsp;</td>
                            <td style="width: 308px">&nbsp;</td>
                            <td style="width: 1958px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td style="width: 456px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 62px; width: 5005px; font-size: medium; font-weight: normal;">-Notes &amp; Evaluation</td>
                            <td style="width: 308px; height: 62px">
                                <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                                <br />
                            </td>
                            <td style="width: 1958px; height: 62px; font-size: medium;">&nbsp;</td>
                            <td style="height: 62px">
                                &nbsp;</td>
                            <td style="width: 456px; height: 62px"></td>
                        </tr>
                        </table>
                    <table class="w-100">
                        <tr>
                            <td style="height: 62px; width: 292px">
                                <br />
                                <asp:Button ID="Button13" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button13_Click" Text="Save Dental History" Width="240px" />
                            </td>
                            <td style="height: 62px; width: 317px">
                                <br />
                                <asp:Button ID="Button14" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button14_Click" Text="Ubdate Dental History" Width="254px" />
                            </td>
                            <td style="height: 62px; width: 166px">
                                <br />
                                <asp:Button ID="Button15" runat="server" BackColor="#333333" CssClass="offset-sm-0" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button15_Click" Text="Search" Width="101px" />
                            </td>
                            <td style="height: 62px; width: 204px">
                                <br />
                                <asp:Button ID="Button16" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button16_Click" OnClientClick="return confirm('Are You Sure?')" Text="Delete" Width="142px" />
                            </td>
                            <td style="height: 62px; width: 639px">
                                <br />
                                <asp:Button ID="Button17" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button17_Click" Text="Load" Width="109px" />
                            </td>
                            <td style="height: 62px"></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="width: 639px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="5" style="width: 639px">
                                <asp:GridView ID="GridView3" runat="server" GridLines="Vertical" Width="1115px" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                                    <HeaderStyle BackColor="#666666" Font-Size="Medium" ForeColor="White" />
                                    <RowStyle Font-Size="Small" />
                                </asp:GridView>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        </table>
                    <table class="w-100">
                        <tr>
                            <td>
                                <table class="w-100">
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <p style="font-size: large">
                        ||
                        Clinical Examination ||</p>
                    <table class="w-100">
                        <tr>
                            <td style="width: 267px">&nbsp;</td>
                            <td style="width: 265px">&nbsp;</td>
                            <td style="width: 152px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 267px; font-weight: normal; font-size: medium;">-Swelling &amp; Site</td>
                            <td style="width: 265px">
                                <asp:TextBox ID="TextBox34" runat="server" Width="249px"></asp:TextBox>
                            </td>
                            <td style="width: 267px; font-size: medium; font-weight: normal;">-Chief complaint</td>
                            <td style="width: 259px">
                                <asp:TextBox ID="TextBox36" runat="server" Width="249px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 267px; font-size: medium; font-weight: normal;">&nbsp;</td>
                            <td style="width: 265px">&nbsp;</td>
                            <td style="width: 152px; font-size: medium; font-weight: normal;">&nbsp;</td>
                            <td style="width: 259px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 152px; font-size: medium; font-weight: normal;">-TTT Plan </td>
                            <td style="width: 265px">
                                <asp:TextBox ID="TextBox40" runat="server" Width="249px"></asp:TextBox>
                            </td>
                            <td style="width: 152px; font-size: medium; font-weight: normal;">-Patient Name</td>
                            <td style="width: 259px">
                    <table class="w-100">
                        <tr>
                            <td style="width: 259px">
                                <asp:TextBox ID="TextBox41" runat="server" Width="249px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 267px; font-size: medium; font-weight: normal; height: 62px;"></td>
                            <td style="width: 265px; height: 62px;"></td>
                            <td style="width: 152px; font-size: medium; font-weight: normal; height: 62px;"></td>
                            <td style="width: 259px; height: 62px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 300px; font-size: medium; font-weight: normal;">-Diagnosis Chart</td>
                            <td style="width: 297px">
                                <asp:FileUpload ID="FileUpload2" runat="server" Font-Size="Small" OnDataBinding="Page_Load" Width="190px" />
                            </td>
                            <td style="width: 297px; font-size: medium; font-weight: normal;">-Endo Chart </td>
                            <td style="width: 259px">
                                <asp:FileUpload ID="FileUpload1" runat="server" Font-Size="Small" Width="190px" />
                            </td>
                        </tr>
                        </table>
                    <p>
                    </p>
                    <table class="w-100">
                        <tr>
                            <td style="width: 300px; font-size: medium; font-weight: normal;">-Extra &amp; Intra oral</td>
                            <td style="width: 297px">
                                <asp:FileUpload ID="FileUpload4" runat="server" Font-Size="Small" Width="190px" />
                            </td>
                            <td style="width: 297px; font-size: medium; font-weight: normal;">-X-rays</td>
                            <td style="width: 259px">
                                <asp:FileUpload ID="FileUpload3" runat="server" Font-Size="Small" Width="190px" />
                            </td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table class="w-100">
                        <tr>
                            <td style="width: 300px; font-size: medium; font-weight: normal; height: 62px;">-Consent</td>
                            <td style="height: 62px; width: 297px">
                                <asp:FileUpload ID="FileUpload7" runat="server" Font-Size="Small" Width="190px" />
                            </td>
                            <td style="width: 297px; font-size: medium; font-weight: normal; height: 62px;">-Prescription</td>
                            <td style="width: 259px">
                                <asp:FileUpload ID="FileUpload6" runat="server" Font-Size="Small" style="margin-left: 65" Width="190px" />
                            </td>
                        </tr>
                    </table>
                    <table class="w-100">
                        <tr>
                            <td style="width: 267px; font-size: medium; font-weight: normal;">&nbsp;</td>
                            <td style="width: 265px">&nbsp;</td>
                            <td style="width: 152px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        </table>
                    <table class="w-100">
                        <tr>
                            <td style="width: 287px">
                                <asp:Button ID="Button18" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="60px" OnClick="Button18_Click" Text="Save Clinical Exmination" Width="240px" />
                            </td>
                            <td style="width: 307px">
                                <asp:Button ID="Button19" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="60px" OnClick="Button19_Click" Text="Update Clinical Examination" Width="264px" CssClass="offset-sm-0" />
                            </td>
                            <td style="width: 138px">
                                <asp:Button ID="Button20" runat="server" BackColor="#333333" CssClass="offset-sm-0" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button20_Click" Text="Search" Width="101px" />
                            </td>
                            <td style="width: 177px">
                                <asp:Button ID="Button21" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button21_Click" OnClientClick="return confirm('Are You Sure?')" Text="Delete" Width="142px" />
                            </td>
                            <td>
                                <asp:Button ID="Button22" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button22_Click" Text="Load" Width="109px" />
                            </td>
                        </tr>
                    </table>
                    <table class="w-100">
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <p>
                        <asp:GridView ID="GridView6" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="220px" Width="903px">
                            <EditRowStyle Font-Size="Small" />
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle Font-Size="Small" ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                    </p>
                    <table class="w-100">
                        <tr>
                            <td style="width: 277px">&nbsp;</td>
                            <td style="width: 317px">&nbsp;</td>
                            <td style="width: 133px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td style="font-size: x-large; font-weight: bold; color: #333333">&nbsp;</td>
            </tr>
            </table>
  <%--  <script>
        function usercheak() {
            $("#Status").html("Checking...");
            $.post("@Url.Action("cheakUsername" , "Home")"),
            {
                    NAME: $("#NAME").val()
            },
            function(data) {
                if (data == 0) {
                    $("#Status").html('<font color="Green">Available !.you can take it.</font>');
                    $("#NAME").css("border-color", "Green");
                }
                else {
                    $("#Status").html('<font color="Red">that name is taken</font>');
                    $("#NAME").css("border-color", "Red");
                }
                });
        }
    </script>--%>
    
</asp:Content>
