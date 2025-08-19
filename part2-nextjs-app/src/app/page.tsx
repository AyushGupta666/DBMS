import { supabase } from "@/utils/supabase";

// Make the component async so we can use 'await' to fetch data
export default async function Home() {
  // Fetch all records from the 'events' table in your Supabase project
  const { data: events, error } = await supabase.from("events").select("*");

  // If there was an error fetching the data, log it to the console
  if (error) {
    console.error("Error fetching events:", error);
  }

  return (
    <main className="flex min-h-screen flex-col items-center p-8 sm:p-24 bg-gray-50 text-gray-800">
      <div className="w-full max-w-5xl">
        <h1 className="text-4xl sm:text-5xl font-bold mb-12 text-center">
          Upcoming Events
        </h1>

        {/* Check if events were fetched successfully */}
        {events && events.length > 0 ? (
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            {/* Map over the events array and render a card for each event */}
            {events.map((event) => (
              <div
                key={event.id}
                className="bg-white border border-gray-200 rounded-lg p-6 shadow-md hover:shadow-lg transition-shadow"
              >
                <h2 className="text-2xl font-semibold mb-2">{event.title}</h2>
                <p className="text-gray-600 mb-4">
                  {/* Format the date to be more readable */}
                  {new Date(event.date).toLocaleDateString("en-US", {
                    year: "numeric",
                    month: "long",
                    day: "numeric",
                  })}
                </p>
                <p className="text-gray-700 mb-4">{event.description}</p>
                <p className="font-medium text-gray-800">City: {event.city}</p>

                {/* Placeholder for RSVP buttons */}
                <div className="mt-6 flex gap-4">
                  <button className="bg-blue-500 text-white font-bold py-2 px-4 rounded hover:bg-blue-700 transition-colors">
                    Yes
                  </button>
                  <button className="bg-gray-300 text-gray-800 font-bold py-2 px-4 rounded hover:bg-gray-400 transition-colors">
                    Maybe
                  </button>
                  <button className="bg-red-500 text-white font-bold py-2 px-4 rounded hover:bg-red-700 transition-colors">
                    No
                  </button>
                </div>
              </div>
            ))}
          </div>
        ) : (
          // If no events are found, display a message
          <p className="text-center text-gray-500">No events found.</p>
        )}
      </div>
    </main>
  );
}
