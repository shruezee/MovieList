# MovieList

**A list-and-detail movie browser** that loads movies from a JSON feed, with a layout that adapts to iPad and rotation.

<p>
  <img alt="Swift" src="https://img.shields.io/badge/Swift-4.2-orange?style=flat-square">
  <img alt="UIKit" src="https://img.shields.io/badge/UIKit-Auto%20Layout-blue?style=flat-square">
  <img alt="Built" src="https://img.shields.io/badge/Built-2019-lightgrey?style=flat-square">
</p>

<p>
  <img src="https://user-images.githubusercontent.com/23718584/60929305-20f29700-a2f4-11e9-8116-95683ac4eceb.png" width="240" alt="Movie list screen">
  <img src="https://user-images.githubusercontent.com/23718584/60929325-41225600-a2f4-11e9-8e2a-f82c78018ef7.png" width="240" alt="Movie details screen">
</p>

## What it demonstrates

- Fetching a JSON movie feed with `URLSession` and decoding it into `Codable` model types
- A list screen with custom cells and a details screen
- Auto Layout that works on iPhone and iPad, in portrait and landscape
- User-friendly error messages when the feed can't be loaded

## Running it

Open the project in Xcode and run it on a simulator.

The original sample feed was hosted on a free JSON service that has since shut down. To try the app, host the JSON from the included text file anywhere (for example as a GitHub Gist "raw" link) and replace the feed URL in the list view controller.

---

Built by **[Shruthi](https://github.com/shruezee)**, iOS developer in Sydney. See my latest apps from **Shruezee Studio**: **[Ashtotra](https://github.com/shruezee/Ashtotra-App)** (live on the App Store), **[KindDose](https://github.com/shruezee/KindDose)** and **[MiniMingle Games](https://github.com/shruezee/MiniMingle-Games)**.
