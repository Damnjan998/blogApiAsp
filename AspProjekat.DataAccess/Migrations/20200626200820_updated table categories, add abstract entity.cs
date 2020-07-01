using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace AspProjekat.DataAccess.Migrations
{
    public partial class updatedtablecategoriesaddabstractentity : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "UpdatedAt",
                table: "Categories");

            migrationBuilder.AddColumn<DateTime>(
                name: "ModifiedAt",
                table: "Categories",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ModifiedAt",
                table: "Categories");

            migrationBuilder.AddColumn<DateTime>(
                name: "UpdatedAt",
                table: "Categories",
                type: "datetime2",
                nullable: true);
        }
    }
}
