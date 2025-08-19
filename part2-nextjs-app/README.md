# PixaBeam - Event Management Platform

This project is a submission for the Database Management role assessment from PixaBeam. It is a minimal Next.js application that allows users to view and RSVP to events, powered by a Supabase backend and deployed on Vercel.

## 📋 Features

* **View Events:** The main page fetches and displays a list of all upcoming events from the Supabase database.
* **RSVP to Events:** Users can RSVP "Yes," "No," or "Maybe" for any event. The response is recorded in the database.

## 🛠️ Tech Stack

* **Frontend:** Next.js, React, Tailwind CSS
* **Backend:** Supabase (PostgreSQL)
* **Deployment:** Vercel

## 🚀 Getting Started

### Prerequisites

* Node.js (v18 or later)
* npm
* A Supabase account

### Local Setup

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/AyushGupta666/DBMS.git](https://github.com/AyushGupta666/DBMS.git)
    cd DBMS/part2-nextjs-app
    ```

2.  **Install dependencies:**
    ```bash
    npm install
    ```

3.  **Set up environment variables:**
    Create a file named `.env.local` in the root of the `part2-nextjs-app` directory. You will need to get your Project URL and Anon Key from your Supabase project's **Settings > API** section.
    ```
    NEXT_PUBLIC_SUPABASE_URL=YOUR_SUPABASE_PROJECT_URL
    NEXT_PUBLIC_SUPABASE_ANON_KEY=YOUR_SUPABASE_ANON_PUBLIC_KEY
    ```

4.  **Run the development server:**
    ```bash
    npm run dev
    ```
    Open [http://localhost:3000](http://localhost:3000) in your browser to see the result.

## 🌐 Deployment

This application is deployed on Vercel. The live version can be accessed at the following link:

[**dbms-yagf.vercel.app**](https://dbms-yagf.vercel.app/)

Any pushes to the `main` branch of the GitHub repository will automatically trigger a new deployment.
