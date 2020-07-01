using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace AspProjekat.DataAccess.Migrations
{
    public partial class TablePicture : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            

            migrationBuilder.CreateTable(
                name: "Pictures",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Src = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Pictures", x => x.Id);
                });

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

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Pictures");

            migrationBuilder.CreateTable(
                name: "Image",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    BlogId = table.Column<int>(type: "int", nullable: false),
                    Src = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Image", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Image_Blogs_BlogId",
                        column: x => x.BlogId,
                        principalTable: "Blogs",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 1,
                column: "CreatedAt",
                value: new DateTime(2020, 7, 1, 12, 53, 3, 602, DateTimeKind.Local).AddTicks(7534));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 2,
                column: "CreatedAt",
                value: new DateTime(2020, 7, 1, 12, 53, 3, 605, DateTimeKind.Local).AddTicks(2651));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 3,
                column: "CreatedAt",
                value: new DateTime(2020, 7, 1, 12, 53, 3, 605, DateTimeKind.Local).AddTicks(2686));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 4,
                column: "CreatedAt",
                value: new DateTime(2020, 7, 1, 12, 53, 3, 605, DateTimeKind.Local).AddTicks(2693));

            migrationBuilder.UpdateData(
                table: "Categories",
                keyColumn: "Id",
                keyValue: 5,
                column: "CreatedAt",
                value: new DateTime(2020, 7, 1, 12, 53, 3, 605, DateTimeKind.Local).AddTicks(2697));

            migrationBuilder.CreateIndex(
                name: "IX_Image_BlogId",
                table: "Image",
                column: "BlogId");
        }
    }
}
