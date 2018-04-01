# A Peer-to-Peer Encyclopedia Network

Sam Kazemian, Kedar Iyer, Travis Moore, Theodor Forselius, Larry Sanger

[sam@everipedia.com](mailto:sam@everipedia.com)  [kedar@everipedia.com](mailto:kedar@everipedia.com)  [travis@everipedia.com](mailto:travis@everipedia.com)  [theodor@everipedia.com](mailto:theodor@everipedia.com)  [larry@everipedia.com](mailto:larry@everipedia.com)

  

DISCLAIMER: This Everipedia Network Technical White Paper version 1.10 is a work in progress and for informational purposes only. It is meant to serve as a proposal of ideas for free, open-source software.

## Abstract

Emerging blockchain technology has made it possible to create an incentivized peer-to-peer network for submitting, curating, and governing a database of encyclopedia articles. Participants in the network earn tokens for curating and submitting content to the database, then use these tokens to vote on protocol upgrades and further submissions or modifications to the database of articles. Websites, businesses, or individuals can build their own user interface to interact with the network or a subset of the network. This allows websites and applications to access and collaborate on a synchronized database of human knowledge, a “greater wiki,” that is constantly updated by all participants and applications on the network.

  

We propose a three module system consisting of a token module, a governance module, and an article submission module. These components interact to create a sustainable, decentralized, immutable, incentivized network of editors that create quality, well-cited encyclopedia articles. The usefulness of having credible information included in this highly ordered, historically recorded, and community maintained distributed database becomes valuable. This usefulness and a stake in the overall network provides the token its utility and value.

## Introduction: The Everipedia Network

The Everipedia Network is a decentralized encyclopedia database fully governed by token holders. Token holders can approve edits, create network-wide rules that govern the encyclopedia, as well as buy and sell services for tokens on the network. This also means that tokens play a central role in the consensus protocol of finalizing data entry into the network.

  

The Everipedia Network turns the non-profit knowledge industry into a knowledge economy where economic incentives can guide the creation of knowledge content. With the Everipedia Network one can connect directly to the world’s largest wiki database from any site. We imagine a future in which even non-programmers can create sites that utilize the Everipedia Network through something as simple as a Wordpress template.

  

Network effects have had a heavy centralization effect on the knowledge industry preventing serious competition and market forces from springing up. Wikipedia is one of the largest websites in the world boasting over 19 billion pageviews a month across all languages.[1][2] However, Wikipedia unintentionally traps the knowledge capital it generates within its own platform when its content could be used to create a thriving knowledge economy.

  

Additionally, one clear shortcoming Wikipedia has demonstrated is its inability to capture any of the monetary and intrinsic value of content that its platform and community has created, as evidenced by bi-annual donation banner campaigns.[3][4] In this regard, there is room to dramatically upend the status quo by creating an open, distributed knowledge base with technology that properly tracks the value creation of the community and returns this value back to the creators, curators, and developers of the platform. Additionally, a distributed platform which draws consensus, contributions, incentives, and value from the participants of the network also has a unique opportunity for the participants to take part in the actual hosting, storage, and distribution of the content on such a network.

  

Achieving such a goal would create a peer to peer distributed content system that is properly incentivized and coordinated. Such a system would be immune to single points of failure which makes it nearly impossible to censor or block access by various bad actors.

  
  

![](https://lh5.googleusercontent.com/A4Pk1I1WWCjGLdEeRvmpSUsObgBwXSzJKG1nPQOKXgq19iV22w-kC8c-Q9afCIJYD43J_fJ3mYtfXcYVZWZGseat_HKlwq3SoaneWM2XJGS8TF7mxf-QPEHTVDhFf7bG-W9Y-CKg)

<sub><sup>The three modules of the Everipedia Network and their interactions. The token module is responsible for holding token balances, minting schedule, and sending/receiving/fee functions. It can change the state of the article module. The article module is responsible for edit proposals and changing the state of the database of articles which are then sent to IPFS nodes. The governance module is responsible for proposals on changing network-wide rules. It can change the state of any module (including itself) by deploying new code that is voted through by token holders.</sub></sup>

## Governance Module

The governance module is an object which has scope to make changes to every module, including itself. Governance actions can modify the software for any of the three modules, but not the databases containing token balances and articles.

  

The governance module allows for submitting changes to the community of token holders for approval. If approved, the governance module then deploys those changes to the corresponding module(s). This allows for the community to come to social consensus on the rules that govern the network as a whole. Discussion about this consensus can take place off-chain on social media and other communication hubs, but deployment of new code needs to be done on-chain in a trustless manner.

  

The Everipedia Network will be a system of smart contracts on the EOS platform, so users will not be running full nodes of the Everipedia Network. This means users cannot vote on software updates by updating their client software as they do in Bitcoin or Ethereum. Instead, a trustless on-chain consensus process must be designed for deployment of new updates.

  

Without an internal consensus process, the only viable alternative for updating the module software would be for a trusted party (such as core developers or a foundation) to process off-chain consensus and deploy new updates with their elevated permissions. This is undesirable given the spirit of the industry and the clear trustless alternative that is possible.

  

Research and development, solutions to scaling, and improvements to the codebase are just as critical (if not more critical) as any service and feature built on top of the network. For this reason, we have laid the foundation for proposing edits and additions to the source code of the network through the governance module. This mechanism will be used for meta-governance of the network protocol itself in a fully trustless, on-chain process.

## Token Module

The token module is responsible for making changes to the token balances of addresses by transferring tokens, applying transaction fees, minting tokens, and locking tokens for the article consensus process. The fundamental unit of account in the Everipedia Network is the IQ token which is tracked within the token module.

### Initial Supply & Minting Schedule  
  

Tokens will be minted daily through the edit process and edit curation process. There will be a fixed amount of tokens minted each day. The amount will be reset every day at 00:00 UTC.

  

Proposed edits pass tiered thresholds and receive IQ rewards based on votes of token holders. The first tier gets their collateral back, but no additional reward (for an explanation of collateral, see the article module). Thresholds past the first tier earn from the daily IQ reward pool. The exact thresholds and distributions for the tiers will be determined by the community as one of the first governance actions.

  

At the end of the day, editors will receive IQ rewards in proportion to the value of their contributions. An single editor’s contribution is valued based on the number and tiers of edits approved (Listing 1). The IQ reward available per day is determined by the daily minting formula (Listing 2).

  

Listing 1: IQ reward formula for a single editor

  

R = Editor’s IQ reward

E = Editor’s contribution value

T = Total contribution value for the day across all edits

Q = IQ daily mint rate constant

  

R = E * T

Q

  

The available IQ reward for the day, Q, is determined by Listing 2:

  

Listing 2: Daily IQ minting formula

  

S0 = Token Supply at Genesis

F = Daily mint rate

A = Annual mint rate

  

F = (1 + A)1/365 - 1

Q = F * S0

  

The annual mint rate, A, will be 5% to match the EOS inflation rate, but the number can be changed by a governance action. Additionally, the minted tokens can be partially re-allocated by a governance action for a developer fund, bounties, or any other use.

## Article Module

The article module is used to propose edits to be included in the database. Proposed edits are tuple objects which contain an IPFS hash pointing to the immediate parent version and an IPFS hash pointing to the new version. An example of an edit object could be: [QmXvHQCbvxp3vQm96VmZDBaTX8Aae6vVcoTvVB6QQsMXnM, QmeAv3LJo4Kre6dR7GQBqjJFztY9YWZD131W5tYGStUcbM ]

  

To propose an edit, users must put forward a small amount of tokens as “collateral” which is returned if the edit is approved. This serves as an anti-spam/anti-troll mechanism which makes attacking the network and proposing dishonest edits very expensive. It also keeps editing effectively free for quality submissions.

  

The second feature of the article module is for token holder voting of inclusion or exclusion of proposed edits in queue. To vote for article changes, token holders must stake their tokens in the article module. When tokens are staked, they are locked by the article module for a fixed number of days, initially 21. This is similar to other blockchains such as Steem which requires users to “power up” (essentially lock and vest) their tokens in order to vote/stake them on content published on the platform.[9] Then, the validation of articles goes through a validation algorithm (below) with parameters that can be changed through a governance vote.

  

Edit proposals are approved in tiers which is an output of the validator function inside the article module. The tiers are as follows:

  

Tier 1: Proposal not approved, collateral burned

Tier 2: Proposal approved, no token reward given, collateral returned

Tier 3: Proposal approved, token rewards given proportional to token holder votes, collateral returned

  

If edit proposals hit Tier 2 or Tier 3 then the article module will store the corresponding edit proposal object into the module database.

### Validation Algorithm (the content consensus method)

One of the most important processes in the network is the validation of state changes to the database - that is, approval of changes to articles or creation of new ones. The validation algorithm is a function which takes in as arguments the proposed edit object of the article and the staked votes of curators for that proposal. It returns the tier of the edit proposal and token rewards for the editor (and curators who staked tokens to vote for the edit proposal).

  

The validation period for each edit lasts a maximum of 72 hours or when a minimum staking threshold is reached. Front-ends are free to use their own criteria to display pending edits since even pending edit objects are located inside the database. For example, some front-ends could choose to display all pending edits with time-sensitive content.

  

At the end of the validation period, an edit is classified into a tier using the following criteria. These criteria can be modified by the governance module. One vote is equivalent to one staked IQ token.

  

Tier 1 - Less than 50% yes votes

Tier 2 - Greater than 50% of yes votes but fails to qualify for Tier 3.

Tier 3 - Greater than 75% of yes votes

  

Every vote received by a Tier 3 edit counts towards an editor’s daily contribution value. IQ rewards for the day are dispersed based on the formulas in Listings 1 and 2 in the Token Module.

### Identity, Reputation, and Account Histories

It is possible to leverage upcoming on-chain identification and reputation systems to incorporate into the validation algorithm and edit approval process such that previous edit histories and identities of editors can be measured in the consensus process. Such identity systems could include uPort or native EOS.IO user ID/reputation systems. Since edit proposals (and their approval/disapproval) are already stored on-chain, this user history can be incorporated into new updates to the validation algorithm coupled with the identification/credentials of the user.

### Delegating Votes

Users who do not wish to personally stake their tokens on a daily basis can delegate their vote to a “staking pool.” Staking pools will be operated by the community and vote on behalf of their users according to transparent principles published in a constitution, wiki, or similar document. Delegated votes can be undelegated at any time.

  

Building a delegate layer on top of the base voting protocol would allow a market to form over article narratives as “thought leaders” pledge curation ideals they would follow should they be delegated votes. For example, an anti-censorship staking pool could state that they will vote in favor of any edit that adequately cites its sources regardless of the specifics of the content. Users who believe in this vision for the encyclopedia network could delegate their votes to the staking pool.

### Staking by Article or Topic

IQ tokens are staked before interacting with the article module’s article validation features. When tokens are staked in this way, they provide system-wide authority on any edit made on any topic on the network. It is possible to explore per article or per topic staking such that staking IQ tokens to a specified subsection of the network’s content gives the staker more authority over such article/topic but only allows them to partake in governance actions for that specified article/topic. The validation algorithm which computes staked votes would need to check for the type of stake (general vs. per article/topic) and weight the vote accordingly. This feature would allow users to “own” a certain jurisdictional authority over certain topics proportional to their stake in that area of the network’s content.

## EOS.IO Implementation

EOS.IO software is a Turing-complete distributed computing platform and smart contract system in which block producers allocate bandwidth & storage for large scale decentralized applications proportional to the user/developer EOS token balance.[7]

![](https://lh4.googleusercontent.com/FcluTkiaZR64iMsHK6F7OxgTBvzkrlVidp08r30JaRusBPmL2RrmrXLKLhhnsAs7BEKCWL_bnliSw9hfzxVrFeHJ4eJfXhmUJe7m8I_nWrnLn9XwP9Oh1inITWjle6EtZ4WmGtcm)

<sub><sup>EOS.IO schematic: Block producers of the network provide bandwidth, IPFS storage, query services, servers, and gateway interfaces. They are incentivized to do this through newly minted EOS tokens, similar to how Bitcoin miners are incentivized to provide SHA256 hashing services to the network through Bitcoin block rewards. Users (clients) then connect to services made available by block producers similar to using classical internet services. Since there are multiple block producers, there is a distributed entry point to all software on the EOS.io network unlike classical centralized web applications. img-source: EOS.IO retrieved from: steemit.com</sub></sup>

  

This allows for feeless transactions since accounts are only rate-limited based on their EOS token balance. The more EOS tokens an account holds, the more of their transactions an account can expect to be included in the ledger. This gasless protocol (compared to Ethereum) allows for the building of rich decentralized consumer applications.

  

Additionally, the EOS protocol has a special process in which the community votes to allocate EOS tokens to up to 3 “[community benefit applications](https://github.com/EOSIO/Documentation/blob/master/TechnicalWhitePaper.md#community-benefit-applications)” that directly benefit the EOS network. An implementation of the Everipedia Network on EOS.IO software will plan to provide maximal community value and innovation to be successfully considered for one of these three coveted spots.[7]

  

Everipedia Network articles (as well as their histories) will be stored using IPFS protocol nodes incentivized through EOS block producer rewards. This means that EOS block producers would provide IPFS retrieval of articles to users free of charge but rate limited by the balance of EOS tokens held by the Everipedia Network EOS account. Since EOS block producers are independent node operators on the EOS network, any block producer can retrieve Everipedia articles to a requesting user. In this sense, it would not be possible for states or other organizations to easily block access to Everipedia articles as they can do with Wikipedia by blocking access to a centralized server or a DNS recordset (ie: the domain name Wikipedia.org). In order to block access to Everipedia Network content, actors would have to prevent any TCP/IP interaction and packet exchange between end users and the EOS mainnet entirely as even a single EOS block producer can provide access to Everipedia content. This task, while theoretically feasible, is substantially more difficult than blocking a single domain and is more akin to attempting to shut down torrent networks by going after all individual torrent seeders - a task that has consistently proven impossible for many well-funded organizations and state actors. Additionally, it is possible for community members to host any set of articles from their own private IPFS daemon which listens for edits of articles by connecting to the EOS network. This means that anyone who wishes to host articles (or some subset of articles) can do so from any location or server by running their own IPFS node and light EOS client.

  

Under the EOS.IO implementation, an Everipedia “reader” is any individual with an internet connection that can access the EOS main network. Reading and requesting Everipedia content is planned to be free to all end users and does not require any IQ token balance. Conversely, an Everipedia “user” is any individual who possesses a functional wallet (an EOS.IO account) with a valid balance of IQ tokens to propose edits. Users will sign all their transactions with the associated private key to demonstrate ownership of a valid balance. Using the EOS.IO account system allows for various web standards and benefits that are not currently available on other blockchains such as account recovery and human readable usernames. This would essentially create a seamless user experience similar to using a web application with classical user and account authentication. Addtionally, it is possible to leverage upcoming EOS.IO identification and reputation systems to incorporate into the validation algorithm and edit approval process such that previous edit histories and identities of editors can be measured in the consensus process.

![](https://lh5.googleusercontent.com/6nvFTiowOqFN_sYKjGapx3N1Y8KwBpc8yA-zSNFqLQ93daNNRB3T8S9MJYW3vrg1z2KEhXBKfuE94nQ4Mm5dTqp0e7nfKp6JdEDynR1OHUjMg76wmJhIM7ReYsWjRpMY27bJoX9M)![](https://lh4.googleusercontent.com/y4sYc45325qLjq_-0FXuxDQ8vneXgyg-uGoJFiL4_7N-3hBtwN-BDGDcC-yeMKcjOMDCxsnTTbASoKBYIObgWgk3ztgnWa-6VGgv0Ah5R4tXBoqj63cSHb4ruN-Qj-cI4ZdCjiyT)

<sub><sup>Current internet content businesses are based on the model on the left. A company is formed which creates a service or platform using rented or bought centralized server hardware. Users produce content and/or use the service. The business owners extract value from users, content-producers, and value creators through advertising, subscriptions, and as many means as possible to pay for server and business costs. The profits are then accrued for investors and stockholders. A distributed autonomous platform (right) uses token value stores to align the incentives of all participants (content creators, curators, bandwidth). There are no central stockholders, profit-takers, or rent-seeking behavior since all participants hold the same type of value store in the network. All participants also directly work toward making each part of the service useful to each class of participant. Img-sources (partially altered): EOS.io presentation. retrieved from: youtube.com</sub></sup>

## Database Schema

Collective collaboration requires agreed norms and standards, especially norms in handling the data that is stored, updated, and consumed. Bitcoin’s unspent transaction output (UTXO) database model is only effective because all network participants agree to keep account values stored in such a structure. Otherwise, the same security guarantees would not be possible.

  

The “database schema” refers the structure of on-chain storage in the EOS.IO blockchain inside of the article module (the associated smart contract). The database for the Everipedia Network will be a 2 column element that pertains to the current hash of the article state. The second element is the immediate preceding hash of the previous state of the article which functions as a pointer. This allows for a tree-like structure of the history of IPFS hashes of the article and allows quick querying of the Everipedia Network database to find the current state of an article in relation to some historical snapshot (as well as any forks or merges). This is similar to a git protocol tree of all previous commits to a codebase except the work done to be committed is an encyclopedia article or edit. This schema has two technical guarantees that make it ideal for distributed ledger storage: 1. Querying for a complete state tree of an article (therefore showing all previous historical edits). 2. Easy branching and merging of articles while keeping a unified history of previous states.

  

An example database of 10 rows is shown below:  
{  
[ QmPgLhaXAPYxx9isxGuxnBZA28WoUxhYsiRaPPbMKdvPAm, null],  
[ QmSRvE5W6WV4KGRwhttumnamJgGGyiaAGYLEaubRgRreP2,

QmPgLhaXAPYxx9isxGuxnBZA28WoUxhYsiRaPPbMKdvPAm ]

[ QmcmBixvVnzrswZ24BbzjbrkTvi4ZMbxZcZpfqjzkxmLYA, null ]

[ QmeAv3LJo4Kre6dR7GQBqjJFztY9YWZD131W5tYGStUcbM, null ],

[ QmXvHQCbvxp3vQm96VmZDBaTX8Aae6vVcoTvVB6QQsMXnM,

QmeAv3LJo4Kre6dR7GQBqjJFztY9YWZD131W5tYGStUcbM ],

[ QmYP7vvmy1MX7x6QDazd8opK4KB2NuhiLGbwBQWgxR552q,

QmXvHQCbvxp3vQm96VmZDBaTX8Aae6vVcoTvVB6QQsMXnM ]

[ QmXoypizjW3WknFiJnKLwHCnL72vedxjQkDDP1mXWo6uco, null ],

[ QmcHn96sJBZY4QaGeDh6vVBDznygqbVCgh7bwHbskxcoaY,

QmeAv3LJo4Kre6dR7GQBqjJFztY9YWZD131W5tYGStUcbM ]

[ QmbtygxuXiQDYn1BWDjsJtHUVYuFzUUV6fdJZg8AL4axVB,

QmSRvE5W6WV4KGRwhttumnamJgGGyiaAGYLEaubRgRreP2]

[ QmYP7vvmy1MX7x6QDazd8opK4KB2NuhiLGbwBQWgxR552q,

QmcHn96sJBZY4QaGeDh6vVBDznygqbVCgh7bwHbskxcoaY ]  
}

  

The first element in each tuple marks some current state, while the second element refers to the previous article state. If the second element is null, this means that the article state has no previous state (meaning the article was just created). In the example above, rows 1, 3, 4, and 7 depict the creation of a new article with no previous state. Row 2 simply shows the article in line one being edited. Row 9 shows the article state in row 2 being edited (now with 3 total edits in its history)

  

Line 5 and 8 demonstrate an article of the same state forking into two different states (perhaps edited by two different communities or telling different narratives of the same topic). Both line 5 and 8 share the previous state of an article created on row 4. Row 6 shows the article in 5 being edited further but the forked off article in row 8 clearly ignores the change because row 9 depicts an edit made to the forked article. Row 10 shows the original forked article in row 8 being merged back into the article that it forked from. The two forked articles are now merged into one again (perhaps due to an edit proposal and community agreement).

  

While the above structure has many advantages, it has several issues that should be directly addressed. For example, concurrent edit proposals can potentially cause issues. If one individual proposes an edit to an article and submits an edit object, then before that object is finalized through consensus, another edit object referencing the same parent hash essentially creates an unintended fork of the article. A potential way to resolve this issue would be to only allow one pending edit proposal referencing the same parent hash at a time in the queue of pending edits.

  

![](https://lh5.googleusercontent.com/ctHqyAUfu1e8Jw4w9K6TOMc_f5puYBOgIgDyXywAUM4MYILLYsF21A0BwK81vOtaOtmuAt-xshKyJb9BLV9FlLkiHhByxpsFXfjy9H4FVIBHrr5tD0-O1WXt1w2TNzAnnNXhLtQr)

<sub><sup>Visual schematic of the above database schema showing 4 distinct articles: “University of California, Los Angeles,” “Travis Moore,” “Qajar Dynasty,” and “Barack Obama.” Each article is hashed. The first edit of an article (article creation) points to a null parent hash. Subsequent edits create new content and hence a new hash and point to the article’s immediate previous state. This forms a tree which makes the article history.</sub></sup>

## Article Data Structure

Articles will be stored as HTML files. This is because using the HTML document object model allows for high compatibility of possible front end combinations for the data which is retrieved from the network. By using HTML, any developer can create a front end to display articles in customized manners, submit edits, and analyze data inside the document. Designated HTML class attributes will be used to mark specific portions of articles so that all front end software can easily detect standard sections of an article. Such classes could include “infobox,” “citation,” or “title.” A data structure standard should be decided on by community members and early adopters of the technology which should include linking schemes and hyperlink rules (such as whether only internal links to the database can be embedded in articles etc). Although the standards can, in theory, be changed with a governance vote, practical application of such a data-structure change is highly cumbersome as some changes are not backwards compatible and would need to be retroactively applied to all older articles within the network.

  

Finally, within the HTML file, there will be one designated JSON-LD class for linked data to the object topic of the article. This allows easy retrievability of key-value descriptors from any article using API endpoints and allows bots to add information easily to the JSON-LD class. JSON-LD is used to build rich graph relationships between objects and is currently used in web pages to describe semantic relationships between the webpage’s topic and content. Having a robust data class for building rich graph relationships between topics within the article helps create a meta-network layer which can be queried for rich data by machines, services, and artificial intelligence training.

  

![](https://lh5.googleusercontent.com/HmJzd-dR4LSokav_cy1LgEuCXCm_OVa57f2ObfuiZUo4RXJ3pGLD6Cjmp01-kjmfVb2ZN-kfmO7WgiOEejY7XqXySGTRk3vyECzK32W1zMOifj9n9Px0Ko-1DEOfU6wCi_YK7F_S)

<sub><sup>Each article is an HTML file that can be served from IPFS nodes or EOS.IO storage across many jurisdictions and participants. CSS and styling is applied on the front end UX layer and can be customized by website owners that serve the content and compete with other front end services. The article content, metadata, and class objects are edited by network participants and require token holder consensus.</sub></sup>

## Blockchain Agnosticism

This whitepaper discusses the implementation of the Everipedia Network using EOS.IO software. It is entirely possible for the three modules discussed above to be built and implemented using different distributed ledger technology while preserving the fundamental substance and utility proposed. Additionally, it is entirely possible to build the three modules using different distributed ledger technology which interact through cross-blockchain transfers of value and data. One example of such an implementation would be building an entire blockchain in a proof of stake system using the Ethereum Plasma Framework. IQ would act as the staking token for production and proposition of blocks.[5][6] Another example of cross-chain implementation could be building the governance module using the upcoming Tezos network since Tezos software is bundled with sophisticated self-governance features to be used for its own network rule-making. Additionally, the storage of article blobs through IPFS nodes can be incentivized using different implementations, such as Filecoin, in addition to EOS.IO Storage (like discussed above).

  

Wikipedia started with 1990s server hardware and architecture but upgraded to caching infrastructure and state of the art data centers. The Everipedia Network is a long term self-sustainable project that has the goal of creating the first global decentralized knowledge base. Given that goal, the network should specifically use technology that has long term potential and developers should keep open minds towards future scaling solutions. This allows network developers and maintainers to make bets on what will be valuable blockchain technology today and in the foreseeable future, but allows building an expandable and platform agnostic network which can use multiple breakthrough technologies to function efficiently.

## Bounties, Services, Bots, Private Edits, Marketplaces, and Network Development

The Everipedia Network is a light-protocol, meaning that it is agnostic to features and services built on its underlying infrastructure. For this reason, the network does not come directly bundled with services hard-coded such as classical advertising or subscriptions. Instead, the network imposes a nominal transaction fee on all token interactions which is burnt (governance based transactions and messages do not accrue a fee). This creates a base layer for an ecosystem of services, bounty/freelance work, and marketplaces for citation verification services and other novel uses. In this way, the Everipedia Network could support established media organizations such as the Wikimedia Foundation (Wikipedia), CNN, and NYTimes taking part in the editing and verification process by creating their own services and organization accounts on the network. This in effect creates an ecosystem where participants are not only encouraged to create the most reliable content but also encouraged to create the best tools and services for the creation of content. This also creates a large volume of transactions which supplies sizable transaction fees which are burnt.

  

Additionally, in future updates, it would be possible to use zero knowledge succinct non-interactive argument of knowledge proofs (zk-SNARKs) to publish state changes to articles with complete privacy. This has a twofold effect: 1.) Individuals can propose content without being publicly identified in the ledger. 2.) Curators can vote for or against the proposal without being publicly identified in the ledger. Implementation of zk-SNARKs (or other zero knowledge proofs) would be done in the same way that private transaction proofs are performed in z.cash and likely to be implemented in Ethereum.[8] To properly use such technology, the base blockchain used for the network would likely need to support zero knowledge proofs in some capacity so that entire SNARK implementations do not have to be “hand-rolled” by the Everipedia Network’s contract code itself.

## Conclusion

The Everipedia network uses IQ tokens, which track the stakes of users and act as incentive rewards for content creators and curators. The network uses a three module system (token, governance, and article) to create a self-sustaining database of encyclopedia articles. The structure of content is uniform and standardized so that it is easily analyzed, consumable, and improved upon by services, front-end websites, AI, and bots. The database schema allows all the technical guarantees of prior wiki software (such as historical snapshot of all article states) as well as new functions not possible before (such as distributed, real-time hosting and scalable forking & merging of articles)

  

Innovation in the encyclopedia industry has stagnated in the past 10 years. Creating a synchronized, collaborative encyclopedia database accessible by all applications on the internet will generate the network effects required to re-ignite growth and innovation in the documenting of knowledge.

## References

[1] Page Views for Wikipedia, Both sites, Normalized. (2005). Retrieved Oct. & nov., 2017, from [https://stats.wikimedia.org/EN/TablesPageViewsMonthlyCombined.htm](https://stats.wikimedia.org/EN/TablesPageViewsMonthlyCombined.htm)

  

[2] Matei, S. A., & Britt, B. C. (2017). Analytic Investigation of a Structural Differentiation Model for Social Media Production Groups. Lecture Notes in Social Networks Structural Differentiation in Social Media, 69-84. doi:10.1007/978-3-319-64425-7_5

  

[3] Denning, P., Horning, J., Parnas, D., & Weinstein, L. (2005). Wikipedia risks. Communications of the ACM, 48(12), 152. doi:10.1145/1101779.1101804

  

[4] Blockchain Investing - Olaf Carlson-Wee and Aaron Harris (25:01). (2017, July 19). Retrieved August 10, 2017, from [https://www.youtube.com/watch?v=9SYVX2wcMVM&feature=youtu.be&t=25m1s](https://www.youtube.com/watch?v=9SYVX2wcMVM&feature=youtu.be&t=25m1s)

  

[5] Buterin, V., & Poon, J. (2017, August 11). Plasma: Scalable Autonomous Smart Contracts. Retrieved August 12, 2017, from [http://plasma.io/plasma.pdf](http://plasma.io/plasma.pdf)

  

[6] Poon, J. (2017, June 17). OmiseGO: Decentralized Exchange and Payments Platform. Retrieved July 3, 2017, from [https://cdn.omise.co/omg/whitepaper.pdf](https://cdn.omise.co/omg/whitepaper.pdf)

  

[7] Larimer, D., (Bytemaster), & Lavin, J., (hkshwa). (2017, June 3). EOS.IO Technical White Paper. Retrieved June 11, 2017, from [https://github.com/EOSIO/Documentation/wiki/Whitepaper-Test](https://github.com/EOSIO/Documentation/wiki/Whitepaper-Test)

  

[8] Buterin, V. (2017, November 9). STARKs, Part I: Proofs with Polynomials. Retrieved November 10, 2017, from [http://vitalik.ca/general/2017/11/09/starks_part_1.html](http://vitalik.ca/general/2017/11/09/starks_part_1.html)

  

[9] Larimer D., Scott N., Zavgorodnev V., Johnson B., Calfee J., Vandeberg M. Steem: An incentivized, blockchain-based social media platform. March 2016. Retrieved January 7th, 2018 from [https://github.com/steemit/whitepaper/commit/da16f36bf23bc53d30b57787d7b9044d9c07399c](https://github.com/steemit/whitepaper/commit/da16f36bf23bc53d30b57787d7b9044d9c07399c).
