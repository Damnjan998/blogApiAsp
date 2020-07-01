using Microsoft.EntityFrameworkCore.Migrations;

namespace AspProjekat.DataAccess.Migrations
{
    public partial class updatedcategorytableaddedtwomorecolumns : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "CreatedAT",
                table: "Categories",
                newName: "CreatedAt");

            migrationBuilder.AddColumn<int>(
                name: "IsActive",
                table: "Categories",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "IsDeleted",
                table: "Categories",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "IsActive",
                table: "Categories");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "Categories");

            migrationBuilder.RenameColumn(
                name: "CreatedAt",
                table: "Categories",
                newName: "CreatedAT");
        }
    }
}
