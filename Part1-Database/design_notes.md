# Design Notes

- **UUIDs** are used as primary keys for scalability and uniqueness across distributed systems.
- **Referential integrity** is maintained with `ON DELETE CASCADE` to automatically clean related RSVPs and events when a user is deleted.
- **Constraints** ensure:
  - Emails are unique in `users`.
  - RSVP status is restricted to 'Yes', 'No', or 'Maybe'.
- This setup allows easy querying of events, RSVPs, and user activity.

