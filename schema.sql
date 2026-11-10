create table if not exists public.christmas_votes (
  id bigint generated always as identity primary key,
  nickname text not null unique check (char_length(nickname) between 1 and 24),
  selections text[] not null check (cardinality(selections) between 1 and 7),
  updated_at timestamptz not null default now()
);
alter table public.christmas_votes enable row level security;
drop policy if exists "Public can read votes" on public.christmas_votes;
drop policy if exists "Public can insert votes" on public.christmas_votes;
drop policy if exists "Public can update votes" on public.christmas_votes;
create policy "Public can read votes" on public.christmas_votes for select to anon using (true);
create policy "Public can insert votes" on public.christmas_votes for insert to anon with check (true);
create policy "Public can update votes" on public.christmas_votes for update to anon using (true) with check (true);
