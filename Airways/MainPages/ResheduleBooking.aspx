<%--<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainSite.Master" CodeBehind="ResheduleBooking.aspx.cs" Inherits="Airways.MainPages.ResheduleBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center;margin-right:300px">
        <h2 style="text-align:center"> Reshedule Booking </h2>
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowUpdating="GridView1_RowUpdating" Width="1078px">
        <Columns>
            <asp:BoundField DataField="Booking_ID" HeaderText="Booking_ID" SortExpression="Booking_ID"  ReadOnly="True" />
            <asp:BoundField DataField="Date_Of_Journey" HeaderText="Date_Of_Journey" SortExpression="Date_Of_Journey" />
            <asp:BoundField DataField="Depart_Time" HeaderText="Depart_Time" SortExpression="Depart_Time" />
            <asp:BoundField DataField="Book_Date" HeaderText="Book_Date" SortExpression="Book_Date" />
            <asp:BoundField DataField="StatusOfBooking" HeaderText="StatusOfBooking" SortExpression="StatusOfBooking" />
            <asp:BoundField DataField="CusName" HeaderText="CusName" SortExpression="CusName" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1"  runat="server" ConnectionString="<%$ ConnectionStrings:myConnectionString %>" SelectCommand="SELECT [Booking_ID], [Date_Of_Journey], [Depart_Time], [Book_Date], [StatusOfBooking], [CusName] FROM [BookDetails] WHERE ([CusID] = @CusID)" UpdateCommand="Update [BookDetails]  Set  [Date_Of_Journey]=@Date_Of_Journey, [Depart_Time]=@Depart_Time, [Book_Date] =@Book_Date  WHERE ([CusID]= 1)">
        <SelectParameters>
            <asp:SessionParameter Name="CusID" SessionField="cusId" Type="Int64" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Date_Of_Journey" />
            <asp:Parameter Name="Depart_Time" />
            <asp:Parameter Name="Book_Date" />
            <asp:Parameter />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>--%>