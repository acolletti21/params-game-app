Rails.application.routes.draw do
  get '/user_name_url' => 'games#name_game'
  get '/guess_query_url' => 'games#guess'

  get '/url_segment_params_url/:this_is_a_variable' => 'games#segment_params'
  get '/guess_segment_params_url/:guess_segment' => 'games#guess_segment'

  get '/form_params_url' => 'games#get_form'
  post '/form_result_url' => 'games#use_form'

  get '/form_guess_url' => 'games#form_guess'
  post '/form_guess_result_url' => 'games#form_guess_result'
end
