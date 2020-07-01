using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace AspProjekat.DataAccess.Migrations
{
    public partial class tableusecaselogs : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Email",
                table: "Users",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "UseCaseLogs",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Date = table.Column<DateTime>(nullable: false),
                    UseCaseName = table.Column<string>(nullable: true),
                    Data = table.Column<string>(nullable: true),
                    Actor = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UseCaseLogs", x => x.Id);
                });

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 1,
                column: "CreatedAt",
                value: new DateTime(2020, 6, 30, 13, 15, 55, 224, DateTimeKind.Local).AddTicks(9646));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 2,
                column: "CreatedAt",
                value: new DateTime(2020, 6, 30, 13, 15, 55, 227, DateTimeKind.Local).AddTicks(5478));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 3,
                column: "CreatedAt",
                value: new DateTime(2020, 6, 30, 13, 15, 55, 227, DateTimeKind.Local).AddTicks(5518));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 4,
                column: "CreatedAt",
                value: new DateTime(2020, 6, 30, 13, 15, 55, 227, DateTimeKind.Local).AddTicks(5524));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 5,
                column: "CreatedAt",
                value: new DateTime(2020, 6, 30, 13, 15, 55, 227, DateTimeKind.Local).AddTicks(5528));
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "UseCaseLogs");

            migrationBuilder.DropColumn(
                name: "Email",
                table: "Users");

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 1,
                column: "CreatedAt",
                value: new DateTime(2020, 6, 30, 11, 53, 32, 662, DateTimeKind.Local).AddTicks(8870));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 2,
                column: "CreatedAt",
                value: new DateTime(2020, 6, 30, 11, 53, 32, 665, DateTimeKind.Local).AddTicks(3533));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 3,
                column: "CreatedAt",
                value: new DateTime(2020, 6, 30, 11, 53, 32, 665, DateTimeKind.Local).AddTicks(3569));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 4,
                column: "CreatedAt",
                value: new DateTime(2020, 6, 30, 11, 53, 32, 665, DateTimeKind.Local).AddTicks(3574));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 5,
                column: "CreatedAt",
                value: new DateTime(2020, 6, 30, 11, 53, 32, 665, DateTimeKind.Local).AddTicks(3579));
        }
    }
}
