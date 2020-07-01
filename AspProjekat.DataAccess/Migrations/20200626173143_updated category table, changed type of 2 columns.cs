using Microsoft.EntityFrameworkCore.Migrations;

namespace AspProjekat.DataAccess.Migrations
{
    public partial class updatedcategorytablechangedtypeof2columns : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<bool>(
                name: "IsDeleted",
                table: "Categories",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AlterColumn<bool>(
                name: "IsActive",
                table: "Categories",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "int");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<int>(
                name: "IsDeleted",
                table: "Categories",
                type: "int",
                nullable: false,
                oldClrType: typeof(bool));

            migrationBuilder.AlterColumn<int>(
                name: "IsActive",
                table: "Categories",
                type: "int",
                nullable: false,
                oldClrType: typeof(bool));
        }
    }
}
