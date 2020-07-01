using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace AspProjekat.DataAccess.Migrations
{
    public partial class Addconstraint : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "BlogId",
                table: "Pictures",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 1,
                column: "CreatedAt",
                value: new DateTime(2020, 7, 1, 16, 7, 0, 81, DateTimeKind.Local).AddTicks(539));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 2,
                column: "CreatedAt",
                value: new DateTime(2020, 7, 1, 16, 7, 0, 83, DateTimeKind.Local).AddTicks(4764));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 3,
                column: "CreatedAt",
                value: new DateTime(2020, 7, 1, 16, 7, 0, 83, DateTimeKind.Local).AddTicks(4801));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 4,
                column: "CreatedAt",
                value: new DateTime(2020, 7, 1, 16, 7, 0, 83, DateTimeKind.Local).AddTicks(4807));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 5,
                column: "CreatedAt",
                value: new DateTime(2020, 7, 1, 16, 7, 0, 83, DateTimeKind.Local).AddTicks(4843));

            migrationBuilder.CreateIndex(
                name: "IX_Pictures_BlogId",
                table: "Pictures",
                column: "BlogId");

            migrationBuilder.AddForeignKey(
                name: "FK_Pictures_Blogs_BlogId",
                table: "Pictures",
                column: "BlogId",
                principalTable: "Blogs",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Pictures_Blogs_BlogId",
                table: "Pictures");

            migrationBuilder.DropIndex(
                name: "IX_Pictures_BlogId",
                table: "Pictures");

            migrationBuilder.DropColumn(
                name: "BlogId",
                table: "Pictures");

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 1,
                column: "CreatedAt",
                value: new DateTime(2020, 7, 1, 16, 4, 33, 701, DateTimeKind.Local).AddTicks(3453));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 2,
                column: "CreatedAt",
                value: new DateTime(2020, 7, 1, 16, 4, 33, 703, DateTimeKind.Local).AddTicks(8321));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 3,
                column: "CreatedAt",
                value: new DateTime(2020, 7, 1, 16, 4, 33, 703, DateTimeKind.Local).AddTicks(8356));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 4,
                column: "CreatedAt",
                value: new DateTime(2020, 7, 1, 16, 4, 33, 703, DateTimeKind.Local).AddTicks(8361));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 5,
                column: "CreatedAt",
                value: new DateTime(2020, 7, 1, 16, 4, 33, 703, DateTimeKind.Local).AddTicks(8365));
        }
    }
}
