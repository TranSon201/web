<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DetailPage.aspx.cs" Inherits="BTL_LTW.DetailPage" %>

<asp:Content ID="DetailPage" ContentPlaceHolderID="content" runat="server">
    <link href="css/DetailPageCss.css" rel="stylesheet" />
    <div class="container">
        <form id="formDetail" runat="server">
            <div class="row">
                <div class="col-md-5">
                    <asp:Image ID="img" runat="server" Style="margin: 5px;" />
                </div>
                <div class="col-md-6 col-md-offset-1" id="inforproduct">
                    <%--  --%>
                    <fieldset>
                        <legend>
                            <h1 style="margin: 0px;">
                                <asp:Label ID="lblName" runat="server" Text="" class="col-md-7"></asp:Label></h1>
                        </legend>
                        <div style="font-family: initial;">
                            <table>
                                <tr>
                                    <td>
                                        <b>Lượt xem: </b>2642 lượt</td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Kho hàng: </b>
                                        <span>Đang còn hàng tại: </span>
                                        <br />
                                        <span style="margin-left: 70px; color: red; font-size: 15px">- 61 Đản Dị - Đông Anh - Hà Nội
                                                <br />
                                        </span>
                                        <span style="margin-left: 70px; color: red; font-size: 15px">- 96 Định Công - Hoàng Mai - Hà Nội
                                                <br />
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>Bảo hành:</b> 1 Tháng
                                            <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>Giao hàng:</b>
                                        <br />
                                        <span style="margin-left: 62px; font-size: 15px">- Miễn phí giao hàng (Trong bán kính 10km) cho đơn hàng từ 500.000đ trở lên 
                                        </span>
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </fieldset>

                    <div class="price">
                        <asp:Label ID="lblPrices" runat="server" Text=""></asp:Label>
                    </div>
                    <asp:Button ID="btnAddToCarts" runat="server" Text="Thêm vào giỏ hàng" class="btn btn-primary btn-lg btn-block" OnClick="btnAddToCarts_Click" />
                </div>
                <%--  --%>
            </div>
            <div class="row">

                <div class="container">
                    <h2>Mô tả</h2>
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#home">Thông tin chi tiết</a></li>
                        <li><a data-toggle="tab" href="#menu1">Đánh giá</a></li>
                    </ul>

                    <div class="tab-content">
                        <div id="home" class="tab-pane fade in active">
                            <div>
                                <h3 class="detail-title">Chất liệu tốt, siêu bền</h3>
                                <asp:Image ID="img1" runat="server" Style="width: 500px; height: 500px;" /><br />
                                <p>Shop chúng tôi vô cùng tự tin về những sản phẩm bán ra. Những đôi giày với chất liệu tốt và bền nhất được shop lựa chọn kỹ càng. Làm từ vải da cao cấp thách thức mọi cuộc chơi.</p>
                            </div>
                            <div>
                                <h3 class="detail-title">Mẫu mã đẹp, phong phú</h3>
                                <asp:Image ID="img2" runat="server" Style="width: 500px; height: 500px;" /><br />
                                <p>Các mẫu giày hot hít nhất trên thị trường đều được shop cập nhật thường xuyên, đến với shop khách hàng sẽ có đôi giày thời thượng, cá tính và hợp xu hướng nhất.</p>
                            </div>
                            <div>
                                <h3 class="detail-title">Chi tiết gia công</h3>
                                <asp:Image ID="img3" runat="server" Style="width: 500px; height: 500px;" /><br />
                                <p>Ngoài chất liệu và mẫu mã thì chi tiết gia công là yếu tố hết sức quan trọng. Độ bền của giày còn phụ thuộc vào chất liệu keo, máy móc hiện đại. Hiểu được tâm lý này nên shop luôn luôn chú ý đến từng chi tiết nhỏ để mang lại cho khách hàng những đôi giày hoàn hảo nhất.</p>
                            </div>
                            <div>
                                <h3 class="detail-title">Liên hệ thắc mắc sản phẩm</h3>
                                <asp:Image ID="img4" runat="server" Style="width: 500px; height: 500px;" /><br />
                                <p>Quý khách hàng vui lòng liên hệ qua Facebook, Zalo hoặc Page để được tư vấn về mẫu mã, size và hàng còn của shop nhé.</p>
                            </div>
                        </div>
                        <div id="menu1" class="tab-pane fade">
                            <h3>Đánh giá:</h3>
                            <p>
                                <asp:Label ID="lblDescribe" runat="server" Text="" class="col-md-8"></asp:Label>
                            </p>
                        </div>
                    </div>
                </div>



            </div>
        </form>
    </div>
    <script src="scripts/jquery-3.3.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
</asp:Content>
