Kleine Todo:
- [ ] Lektorat
	- [x] Zitationen: einheitlichkeit & richtiger Einsatz in Fließtext oder Ende des Satzes.
	- [x] Abkürzungen großschreiben
	- [x] einheitlicher Einsatz von Begriffen (RDOF, REPLICATION/RE...)
	- [x] Letzter Absatz von 2: nochmal gegenchecken.
	- [x] Table 3: remove unknown  [completion:: 2026-05-12]
	- [x] Table 4: entfernen? Letzter comment des ersten Reviewers -> nein
	- [ ] Method report: beschreibung der legal considerations unterbringen. 
	- [x] "Criminology sits at the intersections of these literatures rather than apart from them, which is why we draw on evidence from across the social sciences in what follows." ok? Siehe Satz davor.

## Mail

The reviewers have made a number of positive comments about the paper and we agree it has the potential to make a significant contribution. However, the reviewers have also identified a number of issues in need of attention.

In particular, both reviewers emphasize the importance of greater transparency in the methodological section. In addition, please revise the language to ensure that it is accessible to a broad criminological audience. As criminology brings together scholars from psychology, economics, sociology, law, and related fields, the manuscript should avoid excessive technical jargon and clearly explain methodological concepts that may not be familiar to readers from less technically oriented backgrounds.

Reviewer 1 also encourages you to provide a stronger justification for the inclusion of Law as a field within your search strategy. In particular, it would be helpful to clarify why criminological journals may reasonably be identified under the category of Law in relevant databases.

In addition, as noted by Reviewer 2, the manuscript would benefit from a more fully developed discussion of why questionable research practices (QRPs) and/or open science practices may be shaped by different incentive structures in criminology compared to other disciplines, such as psychology.

Therefore, I invite you to respond to the reviewers' comments and revise your manuscript. If you choose to do this, please ensure that your revised version is no longer than 10,000 words. To ensure a timely review process please submit your revised version within the next six weeks. If you find you require more time, please request this by contacting the Managing Editor, Dr Beth Hardie, at ejc@crim.cam.ac.uk. However, please note that after six months your manuscript can only be considered as a new submission.

## Reviewer 1  

	"To be transparent, I am not a researcher who regularly works with machine learning. As a result, I occasionally found it challenging to follow certain methodological steps as currently described. A simplified visual overview of the workflow (e.g., a schematic or flowchart) may help readers such as myself keep track of the various stages and clarify what is happening with Samples A and B. That said, the appropriate level of methodological detail and accessibility ultimately depends on the authors' intended target audience."

We thank the reviewer for the important note. A flowchart has been added to the manuscript to better support the understanding of the approach. Additionaly, some of the core concepts were briefly defined in the manuscript, while the methodological report was sign-posted more prominently to encourage readers to consult it for a more detailed discussion of the methods.

	"First, there are a few citation style inconsistencies (e.g., p. 1: Banks et al.; p. 4: Akbaritabar and Squazzoni), as well as minor inconsistencies in acronym capitalization (e.g., p. 8: OS → os)."

We would like to thank you once again for pointing this out. It is a bit embarrassing that such errors were overlooked despite the text having been proofread several times. These mistakes have been corrected in the revised manuscript.

	"Second, it is unclear why this study is not framed as a replication of Scoggins and Robertson; the manuscript describes the approach as "improved," but it would be helpful to specify explicitly what is improved and how. "

This again is a fair point, a paragraph framing the work as a replication was removed from the manuscript during a broader, previous revision. During this revision, the wording was changed slightly to reflect your considerations. The specifics of methodological decisions taken compared to @scogginsMeasuringTransparencySocial2024 work are discussed in the methodological report. As stated later in this answer, the report itself was mentioned more prominently and the report itself was improved to encourage readers to consult it. The report includes a discussion of all decisions taken, methodological deviations from Scoggins' and Robertson's design and planned methods.  

	"Third, in the Background section, the discussion of Breznau et al. reads as though these authors coined the term research degrees of freedom in 2022; while their work provides an excellent illustration of RDOFs, it is not the origin of the concept/term. Relatedly, the manuscript may benefit from using "RDOF" more consistently rather than switching to alternatives such as "idiosyncratic researcher variability," as consistency would improve clarity without sacrificing readability; in the same vein, it is unclear why "RDOF" appears in quotation marks on p. 6. "

We also believe that consistent terminology improves readability, which is why we have reviewed and adjusted the terminology to ensure consistency with other terms as well. In addition, we have corrected the important citation of the term's origin by adding a reference to @simmonsFalsePositivePsychologyUndisclosed2011.

	"Fourth, some concepts are introduced without a definition accessible to a general reader-for example, the meaning of "systemic pressure" on p. 3 was not immediately clear; although this is elaborated later, a brief signpost earlier in the text could help orient readers. "

A short side note has been added to foreshadow the later discussion.

	"Fifth, regarding QRPs in psychology and criminology, I would be interested in the authors' rationale for why incentives appear weaker in criminology, and it may improve flow to define QRPs before discussing their prevalence (potentially by switching the order of the relevant paragraphs). "

We thank the reviewer for this observation. We expect the observation to be based on this sentence "Criminology shows similar patterns, though with lower rates due to the absence of incentives (Chin et al., 2023)." The lower admission rates in Chin et al. (2023) were not intended to suggest that incentives are inherently less significant in criminology, but rather to highlight a methodological difference between the two studies: unlike John et al. (2012), which incorporated truth-incentivizing mechanisms (according to @prelecBayesianTruthSerum2004) into its survey design, Chin et al. (2023) did not. The original phrasing was ambiguous in delivering this distinction. The paragraph has been revised accordingly to make the methodological contrast explicit and less suggestive. 
The order of the paragraphs has been improved according to the reviewer's recommendation.

	"Sixth, p. 5 begins with "First... Second... Third...," but it is unclear what is being enumerated, and it reads as though a sentence may have been removed during editing. "

We have revised this passage accordingly.

	"Seventh, the final paragraph of Section 2 could benefit from minor polishing for readability. "

The wording has been revised for improved readability.

	"Eighth, I found the sampling section and the related explanation in the metadata section somewhat difficult to follow; for example, in the data processing description, it is unclear what is meant by "several improvements were implemented but not processed." I would recommend revisiting these sections with an eye toward clarity, as even small wording issues may confuse readers who are not already deeply familiar with this work."

Unfortunately, the cited paragraph was poorly worded: it refers to a caching issue described in greater detail in the methodological report:

	"Several improvements could have been made here. First, the inclusion criterion for the publication date was defined as a combination of published_print and published_online, using the rule ifelse(is.na(published_print), published_online, published_print). A better approach would have been to take the minimum of both dates, ensuring that the earliest publication date was used. Although this solution had been written, it was never applied due to a small but impactful mistake made: Quarto's freeze parameter. When set to true, no code changes are executed. Because this setting was active and the issue was discovered only late in the project, it could no longer be corrected without fully rebuilding the pipeline, including manual recoding of the newly sampled data."

This mistake led to many non-SI papers in the corpus - both a curse and a blessing, as it improved SI-classifier training as well as likely inducing some misclassified non-SI-papers in the final analytical sample, leading to further misclassification, but only to a small extent. We felt it was necessary to acknowledge this, while not over-emphasizing it, given its limited implications for the reported results. Nevertheless, the sentence was revised for improved context.

The whole section is now supported by a flow-chart. Additionally, some parts within the Data Collection section were improved. 

	"Ninth, the question of whether research is OA does not appear to be reflected in either of the stated research questions. "

This is of course correct. It was not part of the initial question but "[...] reported as secondary, descriptive analyses to benchmark open-science adoption." - planned as an accompanying analysis to create context. A short paragraph rationalizing this has been added in the introduction rather than formulating a research question post-hoc.

	"Tenth, it is unclear why "Unknown" appears three times in Table 3. "

The "Unknown" category represents the non-statistical inference papers in each category, reported along with the rest of the sample to indicate the non-applicable cases. To improve the table, "Unknown" has been changed to "Non-SI".

	"Finally, the table ordering and references in the text were slightly confusing (e.g., Table 3 is referenced and the next paragraph refers to Table 5; Table 4 is mentioned before Table 3 but appears afterward). This disrupted the reading flow somewhat, and it may be worth considering how much added value Table 4 provides beyond what is already described in the text."

The table ordering and references have been revised for improved flow. Table 4 was retained as we believe that it provides a useful summary of the sample characteristics, but the text has been revised to better integrate its content.

## Reviewer 2  
  
	"First, the scope of the paper, mostly notably the data, is incredibly broad. This is evident from the background section, in which the authors - I assume consciously and intentionally - talk about the challenges of open science practices for social science (and even beyond). This seems odd, given that readers of EJC are a pretty specific subset of social science. Similarly, the scope of the literature population includes law. Again, this might seem trivial for someone outside of social science, but criminology and law (researchers) have very little in common (mostly), so lumping these results together is a rather crude decision that doesn't seem to have much justification. A minor point but I wanted to highlight it. Are the authors planning on deploying these models for other fields?"

We thank the reviewer for raising this point about scope, and we welcome the opportunity to clarify our rationale.

On the broad framing of open science challenges: The decision to discuss open science across the social sciences (and adjacent fields) reflects the inherently interdisciplinary composition of criminological research itself. Criminological scholarship spans macro-level sociological and economic work through to micro-level analytical psychology, and the open science challenges relevant to the literature we analyze cut across this entire range. Restricting the background to "criminology" narrowly defined would, in our view, understate the disciplinary heterogeneity of the work actually published in the journals in our corpus. That said, we agree the motivation for the broader framing could be made more explicit for EJC's readership, and we will revise the the background section to signpost this rationale.

On the inclusion of law journals: We take the reviewer's point that criminology and law are, generally speaking, distinct fields with limited methodological overlap, and we should have justified this inclusion more carefully. Journals classified as "law" by JCL contain a substantial body of legal psychology research that falls squarely within our analytical scope. @gonzalez-salaCaracterizacionPsicologiaJuridica2017 for example explicitly analyze journals that span both the Criminology & Penology and Law categories in Web of Science (WoS), documenting the relationship between the two categories through legal psychology content. The Law category in WoS captures a body of empirical work, particularly legal psychology, that overlaps substantially with criminological research. This is reflected by the sample characteristics: although only a small share of papers drawn from law journals are empirical statistical inference papers, a closer inspection of the corpus shows that these papers are predominantly legal psychology works rather than doctrinal legal scholarship. In other words, the "law" label captures legal psychology contributions that would otherwise be missed. We will add a clarifying note to the methods section to make this filtering logic transparent to readers.

On deployment to other fields: This falls outside the immediate scope of this paper, but the pipeline is designed to be portable and reusable for other corpora, and we hope it will be used by other researchers to analyze open science practices in other disciplines.

	"Second, and perhaps most importantly, I do have concerns about the manner in which the data and methods are explained, and the transparency of the methods themselves. This is a criminology journal, so it's a balance between comprehensiveness (and therefore technical language) and vagueness (not enough detail). This paper text itself does neither, really, but then I was pleasantly surprised when reading the supplementary materials. These are great, I would highly recommend that the authors sign-post the supplementary materials better in the paper, and then improve the README of the OSF repo itself so that more people can access the local website. The contents of the 'anon' folder is fantastic, but the average crim academic would never find it or know what to do with a folder full of html files without specific instructions. It's somewhat ironic given the contents of the paper, so we should expect better from the authors in this regard."

This is a very important and, to be honest, fairly obvious criticism to make. The data availability statement as well as the methods section's introduction have been revised to better reflect this. To improve accessibility, a readme file for the method-report has been added. Additionally, a GitHub Pages site has been created to access the html files via a simple link. Note that, for the reviewers, that link contains the user name of one of the authors, potentially risking deanonymization. We therefore didn't explicitly include that URL in the manuscript. Brief definitions of the core concepts have been added to the manuscript while the authors decided not to include any further discussion as those are already available in the methodological report and would have reduced clarity for readers without a background in ML methods. 

	On that note, I think most readers will expect a defence of the 'blackbox' criticism of GPT models. Only a handful of criminologists these days still think 'machine learning = amazing novel paper", but instead, many now approach such papers with skepticism. I think, especially given the topic of the paper, that this blackbox critique will need preemptively addressing by the authors."

We welcome the opportunity to address the blackbox concern directly, as we agree it needs a clear response - particularly given the subject matter of the paper.

The blackbox criticism is well-founded when a large language model serves as the primary analytic instrument, producing classifications or inferences that cannot be independently inspected or reproduced. Our design differs in an important respect: ChatGPT was used not as a classifier but exclusively as a _labelling assistant_ during the construction of the training data. Its labels were validated against hand-coded annotations on a random subsample, yielding high agreement after reconciliation (κ ≈ .83). The combined manual/LLM labels then served as training and test data for conventional, tunable ML classifiers - models whose feature sets, hyperparameters, decision boundaries, and performance metrics are fully documented and reported. Importantly, ChatGPT served exclusively as a labelling assistant to scale annotation, not as the analytic instrument driving final classifications.

The final classifications driving our results therefore come from these transparent, validated ML models, not from GPT directly. The role of the LLM was to scale the labelling process efficiently, subject to human validation - a use case that is both auditable and replicable. The trained models, labelled dataset, and coding manual are made available in the supplementary materials precisely so that readers can scrutinize and if necessary contest the classification decisions.

We have added a brief clarification of this distinction to the methods section to preempt this concern for readers.

	"Third, related to the above, the lack of data availability is not particularly convincing. Again. the obvious irony, because the authors must know the vague reasons academic give for not sharing data (legal/privacy reasons with no actual justification or legal basis), and yet here the data is not shared due to 'copyright concerns'. Well, considering the topic of the paper, we need more than that. Have you sought advice on this, or got written correspondence with the publishers to say you cannot? Can you publish some of the data? The authors must know that reproducing this paper would actually be very difficult without this, so we need more detail and justification for not providing at least some of the data. If the data really really cannot be made available, then I would suggest elaborating and sign-posting the supplementary materials even further so that you really do make it easier for someone to re-obtain the data and reproduce your study."

We thank the reviewer for pressing on this point - it is a fair and important one, and we want to address it with the detail it deserves. We have in fact reviewed the text and data mining (TDM) policies of every publisher whose content appears in our corpus. The situation is heterogeneous: some publishers explicitly permit TDM (e.g. SAGE, Cambridge, MDPI, Taylor & Francis, Wiley via their TDM API, Nature, Emerald, Annual Reviews under request), while others prohibit or significantly restrict it (e.g. Elsevier permits API-based access but not scraping; ASCE explicitly prohibits TDM). A small number of sources could not be verified or are excluded on other grounds (e.g. PsycNET supplementary files, which contain no analysable full text). This variation across publishers means that a blanket public release of the full-text corpus is not possible: even where individual publisher policies would allow it, the corpus as a whole includes content from publishers that do not.

It is also worth noting that under EU Directive 2019/790 (Articles 3 and 4), that are applicable to this work, text and data mining for scientific research purposes is broadly permitted for authorised users, and our access was mostly obtained through institutional subscriptions. However, this right to mine does not extend to a right to redistribute the underlying full texts - which is the relevant restriction here.

We have therefore clarified the data availability statement to reflect this situation more precisely, and have expanded the supplementary materials to include:

1. Reproduction materials, including the labelled dataset derived from the full texts, are fully available. All analyses reported in the paper can be replicated directly from this dataset without requiring access to the underlying full texts.
2. All Quarto (R) documents for the manuscript and the methodology report will be made publicly available via a git repository, as stated in the data availability statement. The repository is not yet publicly accessible, as full anonymization for double-blind review requires non-trivial effort that cannot be completed within the current revision timeline. An anonymized, less extensive version of all the files are now included in the osf repository. The authors hope that the materials provided in their current form are sufficient for the purposes of review.
3. The trained classification models will be made publicly available alongside the reproduction materials.
4. A summary of the relevant publisher TDM policies has been added to the supplementary materials, covering all publishers whose content appears in the corpus.

We hope this makes clear that the copyright concern is not a vague disclaimer but reflects a  heterogeneous licensing landscape, and that we have taken seriously the responsibility to make reproduction as straightforward as possible within those constraints.

	"Fourth, the authors often mix-up replication and reproduction terms (as used in social science). These are not the same and cannot be used interchangeably. This needs rectifying."

We thank the reviewer for pointing this out. We have reviewed the manuscript to ensure that the terms "replication" and "reproduction" are used correctly and consistently according to their standard definitions in the social sciences. The relevant sections have been revised accordingly.

	"Fifth, maybe I am being pedantic, but preregistration is not necessarily an open research practice. It's much more about avoiding questionable research practices (QRP). You can preregister your study and have zero open research materials. Also, often in criminology, preregistration does not necessarily help with QRP unless there's an audit trail of the preregistration being recorded prior to data being collected and accessed (often, in criminology, this is not the case, because of secondary data analysis). I say this as someone that is pro-prereg and has a few myself. A minor point because preregistration is still worth looking into, but I wanted to voice this."

We understand the rationale behind the critique and see the challenges of pre-registration in criminology, especially due to secondary data analysis. We think that the discussion is largely based on the definition of open science itself that, in this work, is in line with the definition by the Center for Open Science, that defines preregistration as "[...] a specific plan for the upcoming study. Doing so helps to distinguish planned from unplanned work" [@sciencePreregistration]. Here, the second sentence is of great importance: by distinguishing the planned from the unplanned work, the deviations or research decisions made when the data was at hand is what is of special interest. A thorough discussion of this can be found in @nosekPreregistrationRevolution2018. While the main motivation might of course be avoiding QRPs, the transparent distinction of decisions met in light of the available data or challenges arisen in the analytical process enables a critical review of published work, making it also a valuable instrument in the open science framework. We tried to emphasize the discussion but deemed it a more thorough discussion of this would be out of scope of the work. 