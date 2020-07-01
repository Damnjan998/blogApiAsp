using Microsoft.EntityFrameworkCore.Migrations;

namespace AspProjekat.DataAccess.Migrations
{
    public partial class addedIdcolumninBlogCategory : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "Id",
                table: "BlogCategories",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Id",
                table: "BlogCategories");
        }
    }
}
