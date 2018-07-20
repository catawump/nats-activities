using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace DefaultProject.Models
{
    public class ActivityEvent : BaseEntity
    {
        public User creator {get;set;}

        [Required]
        [MinLength(2)]
        public string title {get;set;}

        [Required]
        public int duration {get;set;}

        [Required]
        public string durationtime {get;set;}

        [Required]
        [MinLength(10)]
        public string description {get;set;}

        [Required]
        public DateTime date {get; set;}

        public List<RSVP> rsvps {get;set;}

        public ActivityEvent(){
            rsvps = new List<RSVP>();
        }

        public ActivityEvent(User creator, string title, int duration, string durationtime, string description, DateTime date){
            this.creator = creator;
            this.title = title;
            this.duration = duration;
            this.durationtime = durationtime;
            this.description = description;
            this.date = date;
        }
    }
}