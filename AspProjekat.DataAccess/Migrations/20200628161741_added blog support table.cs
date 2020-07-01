using Microsoft.EntityFrameworkCore.Migrations;

namespace AspProjekat.DataAccess.Migrations
{
    public partial class addedblogsupporttable : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "BlogCategory",
                columns: table => new
                {
                    BlogId = table.Column<int>(nullable: false),
                    CategoryId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BlogCategory", x => new { x.BlogId, x.CategoryId });
                    table.ForeignKey(
                        name: "FK_BlogCategory_Blogs_BlogId",
                        column: x => x.BlogId,
                        principalTable: "Blogs",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_BlogCategory_Categories_CategoryId",
                        column: x => x.CategoryId,
                        principalTable: "Categories",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_BlogCategory_CategoryId",
                table: "BlogCategory",
                column: "CategoryId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "BlogCategory");
        }
    }
}
