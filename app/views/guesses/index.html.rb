<h1>A Quick Puzzle to Test Your Problem Solving</h1>

<p>A short game sheds light on government policy, corporate America and why no one likes to be wrong.</p>

<p>Here’s how it works:</p>

<p>We’ve chosen a rule that some sequences of three numbers obey — and some do not. Your job is to guess what the rule is.</p>

<p>We’ll start by telling you that the sequence 2, 4, 8 obeys the rule:</p>

<ul>
  <li>
    2, 4, 8 Obeys the rule
  </li>
</ul>

<p>Now it’s your turn. Enter a number sequence in the boxes below, and we’ll tell you whether it satisfies the rule or not. You can test as many sequences as you want.</p>


<% @list.each do |guess| %>
  <li>
    <%= guess.first_num %>,
    <%= guess.second_num %>,
    <%= guess.third_num %>
    <% if guess.first_num < guess.second_num && guess.second_num < guess.third_num %>
      Yes!
      <% else %>
      No.
    <% end %>
  </li>
<% end %>


<form action="">
  <p>
    Enter a sequence:
  </p>

  <label for="first">First number:</label>
  <input id="first" type="text" name="first_number" placeholder="The first number">

  <label for="second">Second number:</label>
  <input id="second" type="text" name="second_number" placeholder="The second number">

  <label for="third">Third number:</label>
  <input id="third" type="text" name="third_number" placeholder="The third number">

  <button>
    Check
  </button>
</form>

<hr>

<form action="http://localhost:3000/show_answer">
  <p>
    When you think you know the rule, describe it in words below and then submit your answer. <strong>Make sure you’re right; you won’t get a second chance.</strong>
  </p>

  <label for="your_answer">Your answer:</label>
  <div>
    <textarea id="your_answer" name="rule" rows="8" cols="40" placeholder="Describe what you think the rule is"></textarea>
  </div>

  <button>
    I think I know it
  </button>
</form>

</hr>

<a href="/clear_guesses">Reset</a>
