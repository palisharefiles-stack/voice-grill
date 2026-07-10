# 🎙️ Hlasový grill (SK)

Živý hovorený `/grill-me` výsluch po slovensky — jedna HTML stránka, Web Speech API (STT sk-SK + TTS) + priame volanie **Claude API alebo Gemini API** s portovaným promptom skillu `grilling`.

Vznikol z researchu `SK_VOICE_GRILLME_MOZNOSTI.md` (možnosť 1 — „postaviť raz, používať navždy").

## Spustenie na PC

1. Pravý klik na `START.ps1` → *Run with PowerShell* (spustí `py -m http.server 8977` a otvorí `http://localhost:8977`). Mikrofón vyžaduje localhost alebo https — neotvárať cez `file://`.
2. Vyber poskytovateľa a vlož API kľúč (uloží sa len do localStorage prehliadača):
   - **Claude** (najvernejší grill): console.anthropic.com → API keys — platí sa token usage, mimo subscription
   - **Gemini** (zadarmo): aistudio.google.com/apikey — free tier
3. Skontroluj/uprav **kontext** a klikni **▶ Začať grill**.
4. Hands-free: AI položí otázku nahlas → automaticky počúva → odpovieš hlasom. Kedykoľvek môžeš aj písať (Enter). ⏹ zastaví reč/počúvanie.

## Iné témy (opakované použitie)

Grilling motor je všeobecný — tému určuje len pole **Kontext**. Predvyplnený je len prázdna šablóna (CIEĽ / STAV / OTVORENÉ OTÁZKY / OBMEDZENIA). Pred grilom: vlož svoj plán/cieľ/dizajn → ▶ Začať. Pripravený kontext k UP-AI cieľu je v `kontext_UP-AI_ciel.txt` (lokálne, mimo repozitára) — skopíruj a vlož.

## Ako dostať výstup do Claude Code session

Gril končí súhrnom **„GRIL UKONČENÝ"** (CIEĽ / OBMEDZENIA / ČO ODKLADÁME / KRITÉRIÁ ÚSPECHU / ROZHODNUTIA) — je navrhnutý ako priamy vstup pre ďalší krok (plán / PRD / implementácia):

- **📋 Súhrn** — skopíruje finálny súhrn do schránky → vlož ho ako správu do bežiacej session.
- **💾 Export** — stiahne celý prepis ako `.md` → presuň ho do priečinka projektu (alebo `C:\SecondBrain\00_Inbox`) a v session napíš „prečítaj grill_prepis_*.md".

## Mobil (Samsung S25)

Localhost z PC nie je z telefónu dostupný — použi nasadenú verziu na GitHub Pages (URL v spodku súboru / v pamäti projektu). V Chrome na Androide funguje SK rozpoznávanie aj SK hlas (Google TTS — over Nastavenia → Prevod textu na reč). API kľúč vložíš na telefóne raz, ostane v prehliadači.

## Poznámky

- **SK hlas (TTS) na PC:** ak stránka hlási, že SK hlas chýba — Windows Nastavenia → Čas a jazyk → Reč → pridať slovenčinu. Na tomto PC je „Microsoft Filip – Slovak".
- **STT:** rozpoznávanie sk-SK beží cez službu prehliadača (Chrome/Edge); Firefox nepodporuje.
- **Gemini vs Claude:** Gemini 2.5 Flash je zadarmo a na bežný grill stačí; najtvrdší a najkonzistentnejší výsluch dáva Claude (Sonnet 5 / Opus 4.8).
