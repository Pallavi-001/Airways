<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MainSite.Master" CodeBehind="ResheduledBookingView.aspx.cs" Inherits="Airways.MainPages.ResheduledBookingView" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center;margin-right:300px">
        <h2 style="text-align:center"> Reshedule Booking Details
            <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="807px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="Booking_ID" HeaderText="Booking_ID" InsertVisible="False" ReadOnly="True" SortExpression="Booking_ID" />
                    <asp:BoundField DataField="CusName" HeaderText="CusName" SortExpression="CusName" />
                    <asp:BoundField DataField="Date_Of_Journey" HeaderText="Date_Of_Journey" SortExpression="Date_Of_Journey" />
                    <asp:BoundField DataField="Airline_Name" HeaderText="AirlineName" SortExpression="AirlineName" />
                    <asp:BoundField DataField="Source_Loc" HeaderText="Source_Loc" SortExpression="Source_Loc" />
                    <asp:BoundField DataField="Destination_Loc" HeaderText="Destination_Loc" SortExpression="Destination_Loc" />
                    <asp:BoundField DataField="Book_Date" HeaderText="Book_Date" SortExpression="Book_Date" />
                    <asp:BoundField DataField="Depart_Time" HeaderText="Depart_Time" SortExpression="Depart_Time" />
                    <asp:BoundField DataField="StatusOfBooking" HeaderText="StatusOfBooking" SortExpression="StatusOfBooking" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConnectionString %>" SelectCommand="SELECT [Booking_ID], [CusName], [Date_Of_Journey], [Airline_Name], [Source_Loc], [Destination_Loc], [Book_Date], [Depart_Time], [StatusOfBooking] FROM [BookDetails] WHERE (([CusID] = @CusID) AND ([StatusOfBooking] = @StatusOfBooking))">
                <SelectParameters>
                    <asp:SessionParameter Name="CusID" SessionField="cusId" Type="Int64" />
                    <asp:Parameter DefaultValue="Resheduled" Name="StatusOfBooking" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </h2>
    </div>
</asp:Content>