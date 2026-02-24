-- Arch Timer - simple cross-device sync (Supabase free tier)
-- Run this in Supabase SQL Editor.

create table if not exists public.workout_sync_profiles (
  sync_code text primary key,
  payload jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.workout_sync_profiles enable row level security;

drop policy if exists "workout_sync_profiles_anon_all" on public.workout_sync_profiles;

create policy "workout_sync_profiles_anon_all"
on public.workout_sync_profiles
for all
to anon, authenticated
using (true)
with check (true);

create index if not exists workout_sync_profiles_updated_at_idx
on public.workout_sync_profiles (updated_at desc);
