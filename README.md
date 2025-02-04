# **Hypothesis: **

Examine whether less working hours = more happiness


# **Potential Insights:**



* **Happiness -** Are people in countries with shorter work weeks happier? (Based on Happiness vs. Avg. Hours Worked)
* **Productivity - **Is productivity higher from countries with less working hours? (Based on GDP per capita to Avg. Hours Worked)
* **Health - **Is life expectancy higher from countries with less working hours? (Based on Healthy Life Expectancy to Avg. Hours Worked)


# **Business case:**

We are consultants for businesses and governments, looking to increase productivity, happiness, and health for their employees.


# **Datasets:**

Dataset 1 - dataset1_avg_annual_hours_worked.csv

Average annual hours actually worked per worker

Source: [https://www.oecd.org/en/data/indicators/hours-worked.html](https://www.oecd.org/en/data/indicators/hours-worked.html) 

Work period: Annual

Combined unit of measure: Hours per year per person

Dataset 2 - dataset2_world_happiness_report

	World Happiness Report 2015 - 2019

	Source: [https://www.kaggle.com/datasets/unsdsn/world-happiness](https://www.kaggle.com/datasets/unsdsn/world-happiness) 

	Period: Annual


    The following columns: GDP per Capita, Family, Life Expectancy, Freedom, Generosity, Trust Government Corruption describe the extent to which these factors contribute in evaluating the happiness in each country.


    The Dystopia Residual metric actually is the Dystopia Happiness Score(1.85) + the Residual value or the unexplained value for each country as stated in the previous answer.


    If you add all these factors up, you get the happiness score so it might be un-reliable to model them to predict Happiness Scores.


<table>
  <tr>
   <td>Factor
   </td>
   <td>Source
   </td>
   <td>Explanation
   </td>
  </tr>
  <tr>
   <td>Overall rank
   </td>
   <td>-
   </td>
   <td>Overall ranking for that year in the Happiness Report
   </td>
  </tr>
  <tr>
   <td>Country or region
   </td>
   <td>-
   </td>
   <td>Country or region of study
   </td>
  </tr>
  <tr>
   <td>Happiness (Subjective Well-Being)
   </td>
   <td>Gallup World Poll
   </td>
   <td>Respondents rate their life satisfaction on a 0 to 10 scale, where:
<p>
10 = Best possible life
<p>
0 = Worst possible life
<p>
This is the core variable used in rankings.
   </td>
  </tr>
  <tr>
   <td>Score
   </td>
   <td>World Happiness Report
   </td>
   <td>happiness score, which is derived using a regression model that links six key factors to life evaluations
   </td>
  </tr>
  <tr>
   <td>GDP per capita
   </td>
   <td>World Bank
   </td>
   <td>Method: PPP-adjusted GDP per capita in international dollars is used.
<p>
Log-transformed to reflect diminishing returns on happiness.
   </td>
  </tr>
  <tr>
   <td>Social support
   </td>
   <td>Gallup World Poll
   </td>
   <td>Method: Respondents answer Yes/No to:
<ul>

<li><em>"If you were in trouble, do you have relatives or friends you can count on to help you whenever you need them?"</em>

<p>
The percentage of "Yes" responses is averaged for each country.</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Healthy life expectancy
   </td>
   <td>World Health Organization (WHO)
   </td>
   <td>The expected number of healthy years a newborn can live.
<p>
Uses WHO estimates based on mortality and health trends.
   </td>
  </tr>
  <tr>
   <td>Freedom to make life choices
   </td>
   <td>Gallup World Poll
   </td>
   <td>"Are you satisfied or dissatisfied with your freedom to choose what you do with your life?"
   </td>
  </tr>
  <tr>
   <td>Generosity
   </td>
   <td>Gallup World Poll
   </td>
   <td>"Have you donated money to a charity in the past month?" - Adjusted for income differences.
   </td>
  </tr>
  <tr>
   <td>Perceptions of corruption
   </td>
   <td>Gallup World Poll
   </td>
   <td>Method: Two survey questions:
<ol>

<li><em>"Is corruption widespread throughout the government in your country?"</em></li>

<li><em>"Is corruption widespread within businesses in your country?"</em>

<p>
The average of the two responses is used.</li>
</ol>
   </td>
  </tr>
</table>