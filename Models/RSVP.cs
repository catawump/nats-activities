using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace DefaultProject.Models
{
    public class RSVP : BaseEntity
    {
        public User user {get;set;}
        public ActivityEvent activity {get;set;}

        public RSVP(){
        }

        public RSVP(User user, ActivityEvent activity){
            this.user = user;
            this.activity = activity;
        }
        
    }
}