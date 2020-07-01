using Microsoft.EntityFrameworkCore.Migrations;

namespace AspProjekat.DataAccess.Migrations
{
    public partial class updateBlogCategorytable : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_BlogCategory_Id",
                table: "BlogCategory");

            migrationBuilder.DropColumn(
                name: "Id",
                table: "BlogCategory");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "Id",
                table: "BlogCategory",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_BlogCategory_Id",
                table: "BlogCategory",
                column: "Id",
                unique: true);
        }
    }
}
