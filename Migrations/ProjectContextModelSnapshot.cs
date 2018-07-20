﻿// <auto-generated />
using System;
using DefaultProject.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace DefaultProject.Migrations
{
    [DbContext(typeof(ProjectContext))]
    partial class ProjectContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.1.1-rtm-30846")
                .HasAnnotation("Relational:MaxIdentifierLength", 64);

            modelBuilder.Entity("DefaultProject.Models.ActivityEvent", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime>("created_at");

                    b.Property<int?>("creatorid");

                    b.Property<DateTime>("date");

                    b.Property<string>("description")
                        .IsRequired();

                    b.Property<int>("duration");

                    b.Property<string>("durationtime")
                        .IsRequired();

                    b.Property<string>("title")
                        .IsRequired();

                    b.Property<DateTime>("updated_at");

                    b.HasKey("id");

                    b.HasIndex("creatorid");

                    b.ToTable("activities");
                });

            modelBuilder.Entity("DefaultProject.Models.RSVP", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd();

                    b.Property<int?>("activityid");

                    b.Property<DateTime>("created_at");

                    b.Property<DateTime>("updated_at");

                    b.Property<int?>("userid");

                    b.HasKey("id");

                    b.HasIndex("activityid");

                    b.HasIndex("userid");

                    b.ToTable("rsvps");
                });

            modelBuilder.Entity("DefaultProject.Models.User", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("confirm_password");

                    b.Property<DateTime>("created_at");

                    b.Property<string>("email")
                        .IsRequired();

                    b.Property<string>("first_name")
                        .IsRequired();

                    b.Property<string>("last_name")
                        .IsRequired();

                    b.Property<string>("password")
                        .IsRequired();

                    b.Property<DateTime>("updated_at");

                    b.HasKey("id");

                    b.ToTable("users");
                });

            modelBuilder.Entity("DefaultProject.Models.ActivityEvent", b =>
                {
                    b.HasOne("DefaultProject.Models.User", "creator")
                        .WithMany("activities")
                        .HasForeignKey("creatorid");
                });

            modelBuilder.Entity("DefaultProject.Models.RSVP", b =>
                {
                    b.HasOne("DefaultProject.Models.ActivityEvent", "activity")
                        .WithMany("rsvps")
                        .HasForeignKey("activityid");

                    b.HasOne("DefaultProject.Models.User", "user")
                        .WithMany("rsvps")
                        .HasForeignKey("userid");
                });
#pragma warning restore 612, 618
        }
    }
}
