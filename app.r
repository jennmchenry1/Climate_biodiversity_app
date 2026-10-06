# ============================================================
# Blue Carbon Canada - National Synthesis  
# About page
# ============================================================

library(shiny)
library(shinythemes)

# ============================================================
# 1. Define User Interface
# ============================================================

ui <- fluidPage(
  
  title = "Northwest Atlantic Kelp Species Distribution Models",
  
  theme = shinytheme("journal"),
  
  titlePanel(
    span(
      class = "main-title",
      "Climate Change Refugia for Northwest Atlantic Kelp Forests"
    )
  ),
  
  div(
    p(
      class = "subtitle",
      "Projecting where kelp forests will persist, shift, or disappear by 2100 ",
      "across one of the fastest-warming regions of the global ocean."
    )
  ),
  
  # ==========================================================
  # Styling
  # ==========================================================
  
  tags$head(
    tags$style(HTML("
      .about-hero {
        background: linear-gradient(135deg, #0b5563 0%, #14808f 100%);
        color: #ffffff;
        padding: 36px 30px;
        border-radius: 10px;
        margin: 20px 0 24px 0;
      }
      
      .about-hero h2 {
        margin-top: 0;
        font-weight: 700;
      }
      
      .about-hero p.subtitle {
        font-size: 1.05rem;
        opacity: 0.92;
        margin-bottom: 0;
      }
      
      .about-section {
        background: #ffffff;
        border: 1px solid #e3e3e3;
        border-radius: 10px;
        padding: 22px 26px;
        margin-bottom: 20px;
      }
      
      .about-section h4 {
        color: #0b5563;
        font-weight: 700;
        margin-bottom: 12px;
      }
      
      .stat-row {
        background: #f3f8f8;
        border-radius: 10px;
        margin-bottom: 24px;
        padding: 10px 0;
      }
      
      .refugia-callout {
        background: rgba(177, 156, 217, 0.15);
        border-left: 4px solid #B19CD9;
        border-radius: 6px;
        padding: 14px 18px;
        margin: 14px 0;
      }
      
      .study-goal {
        background: #eef5f6;
        border-left: 4px solid #0b5563;
        border-radius: 6px;
        padding: 14px 18px;
        margin: 14px 0;
      }
      
      .species-pill {
        display: inline-block;
        background: #e8f1f2;
        color: #0b5563;
        border-radius: 20px;
        padding: 4px 12px;
        margin: 3px;
        font-size: 0.85rem;
        font-style: italic;
      }
      
      .citation-box {
        background: #f8f8f8;
        border: 1px dashed #ccc;
        border-radius: 8px;
        padding: 14px 18px;
        font-size: 0.9rem;
      }
      
      .stat-box {
        text-align: center;
        padding: 14px 8px;
      }
      
      .stat-box .stat-value {
        font-size: 1.9rem;
        font-weight: 700;
        color: #0b5563;
      }
      
      .stat-box .stat-label {
        font-size: 0.85rem;
        color: #444;
        margin-top: 2px;
      }
      
      .main-title {
        color: #0b5563;
        font-weight: 700;
      }
      
      .nav-tabs > li > a {
        color: #B19CD9;
      }
      
      .nav-tabs > li > a:hover {
        color: #5B2C6F;
      }
      
      .species-card {
        background: #f8fbfb;
        border: 1px solid #e3e3e3;
        border-radius: 10px;
        padding: 10px;
        text-align: center;
      }
    "))
  ),
  
  # ==========================================================
  # Main tab set
  # ==========================================================
  
  tabsetPanel(
    
    id = "main_tabs",
    
    # ========================================================
    # About
    # ========================================================
    
    tabPanel(
      "About",
      
      # ------------------------------------------------------
      # Summary statistics
      # ------------------------------------------------------
      
      fluidRow(
        class = "stat-row",
        
        column(
          3,
          div(
            class = "stat-box",
            div(
              class = "stat-value",
              "4"
            ),
            div(
              class = "stat-label",
              "dominant kelp species modeled"
            )
          )
        ),
        
        column(
          3,
          div(
            class = "stat-box",
            div(
              class = "stat-value",
              "~5,000"
            ),
            div(
              class = "stat-label",
              "occurrence records (2010–2024)"
            )
          )
        ),
        
        column(
          3,
          div(
            class = "stat-box",
            div(
              class = "stat-value",
              "39–64°N"
            ),
            div(
              class = "stat-label",
              "latitudinal extent studied"
            )
          )
        ),
        
        column(
          3,
          div(
            class = "stat-box",
            div(
              class = "stat-value",
              "4.5–28%"
            ),
            div(
              class = "stat-label",
              "projected loss in total kelp extent by 2100"
            )
          )
        )
      ),
      
      # ------------------------------------------------------
      # Why kelp forests?
      # ------------------------------------------------------
      
      div(
        class = "about-section",
        
        h4("Why kelp forests, and why here?"),
        
        p(
          "Kelp forests are ranked among the most climate-vulnerable ecosystems in the ",
          "ocean — the second most vulnerable marine ecosystem overall, and the single ",
          "most vulnerable temperate marine ecosystem to climate change. Found along more ",
          "than a third of the world's coastlines, these highly productive ecosystems support ",
          "rich biodiversity and provide a wide range of ecosystem services, including ",
          "fisheries productivity, nursery habitat for fish, nutrient cycling, and carbon ",
          "storage. Substantial kelp forest change has already occurred worldwide, driven by ",
          "ocean warming, intensifying marine heatwaves, and local pressures like sea urchin ",
          "overgrazing and invasive species. Yet predicting where and how kelp forests will ",
          "change next remains challenging — their responses depend on a complex interplay ",
          "between climatic, oceanographic, and ecological processes that play out across ",
          "different spatial and temporal scales, often at finer scales than most climate ",
          "models can resolve."
        ),
        
        p(
          "The Northwest Atlantic provides a compelling regional context for examining ",
          "kelp forest redistribution. It's warming faster than nearly anywhere else in the ",
          "ocean, and it spans a steep biogeographic gradient — from warm-temperate ",
          "waters off southern New England to the cold, sea-ice-influenced waters of the ",
          "Gulf of St. Lawrence, Newfoundland, and Labrador. Earlier large-scale models have ",
          "generally projected widespread kelp decline across this region, but local field ",
          "surveys tell a more nuanced story — with some areas experiencing complete loss ",
          "and others exhibiting shifts in species dominance, surprising pockets of ",
          "persistence, and even signs of recovery after past heatwaves. Part of that ",
          "mismatch reflects the sparse, often biased occurrence data earlier models relied ",
          "on; a decade of expanded monitoring has since produced a substantially larger, ",
          "more locally resolved dataset for calibrating models to regional conditions."
        ),
        
        div(
          class = "study-goal",
          
          tags$strong("Study goal: "),
          
          "I wanted to project not just whether kelp persists, but how species composition ",
          "is likely to shift — and where climate refugia might emerge."
        )
      ),
      
      # ------------------------------------------------------
      # Four species
      # ------------------------------------------------------
      
      div(
        class = "about-section",
        
        h4("The four species behind the maps"),
        
        p(
          "I modeled the dominant canopy-forming kelp species across the region, ",
          "each with distinct thermal preferences:"
        ),
        
        fluidRow(
          
          column(
            3,
            div(
              class = "species-card",
              
              tags$img(
                src = "Alaria_esculenta.jpg",
                alt = "Alaria esculenta",
                style = "width:100%; aspect-ratio:1/1; object-fit:cover; border-radius:8px;"
              ),
              
              p(
                style = "margin:8px 0 2px 0; font-style:italic; font-weight:600; color:#0b5563;",
                "Alaria esculenta"
              ),
              
              p(
                style = "margin:0; font-size:0.85rem; color:#444;",
                "Winged kelp — cold-adapted"
              )
            )
          ),
          
          column(
            3,
            div(
              class = "species-card",
              
              tags$img(
                src = "Agarum_clathratum.jpg",
                alt = "Agarum clathratum",
                style = "width:100%; aspect-ratio:1/1; object-fit:cover; border-radius:8px;"
              ),
              
              p(
                style = "margin:8px 0 2px 0; font-style:italic; font-weight:600; color:#0b5563;",
                "Agarum clathratum"
              ),
              
              p(
                style = "margin:0; font-size:0.85rem; color:#444;",
                "Shotgun kelp — cold-adapted"
              )
            )
          ),
          
          column(
            3,
            div(
              class = "species-card",
              
              tags$img(
                src = "Saccharina_latissima.jpg",
                alt = "Saccharina latissima",
                style = "width:100%; aspect-ratio:1/1; object-fit:cover; border-radius:8px;"
              ),
              
              p(
                style = "margin:8px 0 2px 0; font-style:italic; font-weight:600; color:#0b5563;",
                "Saccharina latissima"
              ),
              
              p(
                style = "margin:0; font-size:0.85rem; color:#444;",
                "Sugar kelp — eurythermal"
              )
            )
          ),
          
          column(
            3,
            div(
              class = "species-card",
              
              tags$img(
                src = "Laminaria_digitata.jpg",
                alt = "Laminaria digitata",
                style = "width:100%; aspect-ratio:1/1; object-fit:cover; border-radius:8px;"
              ),
              
              p(
                style = "margin:8px 0 2px 0; font-style:italic; font-weight:600; color:#0b5563;",
                "Laminaria digitata"
              ),
              
              p(
                style = "margin:0; font-size:0.85rem; color:#444;",
                "Horsetail kelp — warm-adapted"
              )
            )
          )
        ),
        
        p(
          style = "margin-top:14px;",
          
          "Laminaria digitata is treated together with Hedophyllum nigripes, since the two ",
          "cannot be reliably distinguished in underwater surveys and are expected to co-occur ",
          "across most of their range."
        )
      ),
      
      # ------------------------------------------------------
      # Methods
      # ------------------------------------------------------
      
      div(
        class = "about-section",
        
        h4("How the projections were built"),
        
        p(
          "I combined the most comprehensive set of kelp occurrence records assembled to date for ",
          "the region with high-resolution bathymetric and oceanographic data (down to 450 m, finer ",
          "than most past efforts) to fit an ensemble of species distribution models — blending ",
          "generalized linear models, boosted regression, random forests, and multivariate adaptive ",
          "regression splines."
        ),
        
        p(
          "Each species model was trained on present-day conditions (2010–2020) and then projected ",
          "to end-of-century conditions (2090–2100) under three CMIP6 climate scenarios spanning low ",
          "to high greenhouse gas emissions (SSP1-2.6, SSP2-4.5, and SSP3-7.0). Models were evaluated ",
          "using cross-validation and an independent test set, and only locations with low prediction ",
          "uncertainty were retained in the final maps."
        )
      ),
      
      # ------------------------------------------------------
      # Findings
      # ------------------------------------------------------
      
      div(
        class = "about-section",
        
        h4("What I found"),
        
        tags$ul(
          
          tags$li(
            "Cold-adapted species (winged and shotgun kelp) are projected to contract sharply at ",
            "their southern range edges, while the warm-adapted horsetail kelp expands poleward. ",
            "Sugar kelp, the most temperature-tolerant species, changes the least."
          ),
          
          tags$li(
            "Rather than uniform die-off, much of the region is projected to undergo ",
            tags$strong("species turnover"),
            " — one kelp species replacing another — rather than ",
            "outright loss of kelp habitat."
          ),
          
          tags$li(
            "Total kelp forest extent is projected to decline by roughly 4.5% under a low-emissions ",
            "future to as much as 28% under a high-emissions future."
          )
        ),
        
        div(
          class = "refugia-callout",
          
          tags$strong("A bright spot: climate refugia. "),
          
          "Several areas — notably the Bay of Fundy and coastal stretches of Atlantic Nova Scotia, ",
          "Newfoundland, and Labrador — consistently retain stable kelp assemblages across all three ",
          "climate scenarios. These refugia tend to occur in deeper, lower-light, higher-relief seafloor ",
          "areas that buffer against temperature extremes, and may be important targets for ",
          "conservation and monitoring as warming continues."
        )
      ),
      
      # ------------------------------------------------------
      # How to use the app
      # ------------------------------------------------------
      
      div(
        class = "about-section",
        
        h4("How to use this app"),
        
        p(
          "This app is the interactive companion to a peer reviewed paper in [TBD] — use the tabs above to ",
          "explore the underlying species models, their projected redistribution under each ",
          "emissions scenario, and the patterns of persistence and turnover that emerge at ",
          "the community level."
        )
      ),
      
      # ------------------------------------------------------
      # Team
      # ------------------------------------------------------
      
      div(
        class = "about-section",
        
        h4("The team behind this work"),
        
        p(
          "This work brought together kelp researchers from academic, NGO, and government ",
          "institutions across Atlantic Canada and the United States, with a shared interest ",
          "in understanding how kelp forests are responding to rapid ocean warming — and where ",
          "they're most likely to hold on."
        ),
        
        p(
          "In 2024, I brought together researchers in Halifax, NS to identify and collate ",
          "the datasets needed to support this study."
        ),
        
        p(
          "Funding and support for this work came from ",
          
          tags$a(
            href = "https://www.bluecarboncanada.ca",
            target = "_blank",
            style = "color:#B19CD9;",
            tags$strong("Blue Carbon Canada")
          ),
          
          " — a multi-institute research program based at the University of Victoria ",
          "that aims to better understand the role that kelp forests and other blue carbon ",
          "ecosystems play in Canada's natural climate solutions inventories. ",
          
          "The broader BCC research program is funded by Fisheries and Oceans Canada, ",
          "the Natural Science and Engineering Research Council of Canada, Mitacs, and ",
          "Oceans North, among other funders."
        ),
        
        div(
          style = "text-align:center; margin-top:14px;",
          
          div(
            style = "display:flex; gap:10px; justify-content:center; flex-wrap:wrap;",
            
            tags$img(
              src = "team_photo_1.jpg",
              alt = "Research team photo 1",
              style = "width:31%; min-width:140px; aspect-ratio:4/3; object-fit:cover; border-radius:10px; box-shadow: 0 2px 8px rgba(0,0,0,0.15);"
            ),
            
            tags$img(
              src = "team_photo_2.jpg",
              alt = "Research team photo 2",
              style = "width:31%; min-width:140px; aspect-ratio:4/3; object-fit:cover; border-radius:10px; box-shadow: 0 2px 8px rgba(0,0,0,0.15);"
            ),
            
            tags$img(
              src = "team_photo_3.jpg",
              alt = "Research team photo 3",
              style = "width:31%; min-width:140px; aspect-ratio:4/3; object-fit:cover; border-radius:10px; box-shadow: 0 2px 8px rgba(0,0,0,0.15);"
            )
          ),
          
          p(
            style = "font-size:0.85rem; color:#666; margin-top:8px;",
            "Northwest Atlantic Kelp Workshop - 2024"
          )
        )
      ),
      
      # ------------------------------------------------------
      # Citation & data
      # ------------------------------------------------------
      
      div(
        class = "about-section",
        
        h4("Citation & data"),
        
        div(
          class = "citation-box",
          
          "McHenry, J., Byrnes, J.E.K., DiBacco, C., et al. Projecting climate refugia for kelp ",
          "forests in a global hotspot for rapid ocean warming. (In review)."
        ),
        
        p(
          style = "margin-top:12px;",
          
          "Model code, outputs, and most occurrence data are being made openly available via a public ",
          "GitHub repository [link] and the Blue Carbon Canada Borealis Dataverse [link]. Some datasets ",
          "collected through Indigenous partnerships are subject to data-sharing agreements and Indigenous ",
          "data sovereignty principles and are not included in the public release."
        )
      ),
      
      # ------------------------------------------------------
      # Contact
      # ------------------------------------------------------
      
      div(
        class = "about-section",
        
        h4("Contact"),
        
        p(
          "Questions about the app or the underlying research? Reach out to ",
          
          tags$strong("Jennifer McHenry"),
          
          " (Department of Biology, University of Victoria) at ",
          
          tags$a(
            href = "mailto:jennmchenry@uvic.ca",
            style = "color:#B19CD9;",
            "jennmchenry@uvic.ca"
          ),
          
          "."
        )
      )
    )
  )
)

# ============================================================
# 2. Define Server
# ============================================================

server <- function(input, output, session) {
  
  # No server-side functionality is currently needed.
  
}

# ============================================================
# 3. Run Shiny App
# ============================================================

shinyApp(
  ui = ui,
  server = server
)