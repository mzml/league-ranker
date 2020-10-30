from behave import *


# use_step_matcher("re")


@given("'{number_of_teams}' teams are playing")
def step_impl(context, number_of_teams):
    """
    :type context: behave.runner.Context
    """
    context.number_of_teams = number_of_teams
    print(context.number_of_teams)
    raise NotImplementedError(u'STEP: Given \'10\' teams are playing')
