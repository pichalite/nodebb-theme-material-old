
<!-- IMPORT partials/account_menu.tpl -->

<div class="account">
	<div class="row">
		<div class="col-xs-12">
			<h4>[[user:browsing]]</h4>
			<div class="well">
				<div>
					<input type="checkbox" data-property="openOutgoingLinksInNewTab" id="openOutgoingLinksInNewTab" /> 
					<label for="openOutgoingLinksInNewTab"><strong>[[user:open_links_in_new_tab]]</strong>
					</label>
				</div>
				<div>
					<input type="checkbox" data-property="topicSearchEnabled" id="topicSearchEnabled" /> 
					<label for="topicSearchEnabled"><strong>[[user:enable_topic_searching]]</strong>
					</label>
				</div>
				<p class="help-block">[[user:topic_search_help]]</p>
			</div>

			<h4>[[global:privacy]]</h4>
			<div class="well">
				<div>
					<input type="checkbox" data-property="showemail" id="showemail" /> 
					<label for="showemail"><strong>[[user:show_email]]</strong></label>
				</div>
				<div>
					<input type="checkbox" data-property="showfullname" id="showfullname" /> 
					<label for="showfullname"><strong>[[user:show_fullname]]</strong></label>
				</div>
				<div>
					<input type="checkbox" data-property="restrictChat" id="restrictChat" /> 
					<label for="restrictChat"><strong>[[user:restrict_chats]]</strong></label>
				</div>
			</div>

			<h4>[[global:email]]</h4>
			<div class="well">
				<!-- IF !disableEmailSubscriptions -->
				<div class="form-group">
					<label for="dailyDigestFreq">[[user:digest_label]]</label>
					<select class="form-control" id="dailyDigestFreq" data-property="dailyDigestFreq">
						<option value="off">[[user:digest_off]]</option>
						<option value="day">[[user:digest_daily]]</option>
						<option value="week">[[user:digest_weekly]]</option>
						<option value="month">[[user:digest_monthly]]</option>
					</select>
					<p class="help-block">[[user:digest_description]]</p>
				</div>

				<div>
				    <input type="checkbox" data-property="sendChatNotifications" id="sendChatNotifications" /> 
				    <label for="sendChatNotifications"><strong>[[user:send_chat_notifications]]</strong>
					</label>
				</div>

				<div>
					<input type="checkbox" data-property="sendPostNotifications" id="sendPostNotifications" /> 
					<label for="sendPostNotifications"><strong>[[user:send_post_notifications]]</strong>
					</label>
				</div>
				<!-- ENDIF !disableEmailSubscriptions -->
			</div>

			<h4>[[user:follow]]</h4>
			<div class="well">
				<div>
					<input type="checkbox" data-property="followTopicsOnCreate" id="followTopicsOnCreate"> 
				    <label for="followTopicsOnCreate"><strong>[[user:follow_topics_you_create]]</strong>
					</label>
				</div>
				<div>
					<input type="checkbox" data-property="followTopicsOnReply" id="followTopicsOnReply"> 
					<label for="followTopicsOnReply"><strong>[[user:follow_topics_you_reply_to]]</strong>
					</label>
				</div>
			</div>
			
			<h4>[[groups:groups]]</h4>
			<div class="well">
				<div class="form-group">
					<label for="grouptitle">[[user:grouptitle]]</label>
					<select class="form-control" id="grouptitle" data-property="groupTitle">
						<!-- BEGIN userGroups -->
						<!-- IF userGroups.userTitleEnabled -->
						<option value="{userGroups.name}">{userGroups.userTitle}</option>
						<!-- ENDIF userGroups.userTitleEnabled -->
						<!-- END userGroups -->
					</select>
				</div>
			</div>

			<h4>[[global:pagination]]</h4>
			<div class="well">
				<div>
				    <input type="checkbox" data-property="usePagination" id="usePagination"> 
				    <label for="usePagination"><strong>[[user:paginate_description]]</strong></label>
				</div>

				<strong>[[user:topics_per_page]]</strong><br /> <input type="text" class="form-control" data-property="topicsPerPage"><br />
				<strong>[[user:posts_per_page]]</strong><br /> <input type="text" class="form-control" data-property="postsPerPage"><br />
			</div>

			<h4>[[global:header.notifications]]</h4>
			<div class="well">
				<input type="checkbox" data-property="notificationSounds" id="notificationSounds"> 
				<label for="notificationSounds"><strong>[[user:notification_sounds]]</strong></label>
			</div>

			<h4>[[global:language]]</h4>
			<div class="well">
				<select data-property="userLang" class="form-control">
					<!-- BEGIN languages -->
					<option value="{languages.code}">{languages.name} ({languages.code})</option>
					<!-- END languages -->
				</select>
			</div>


			<!-- BEGIN settings -->
			<h4>{settings.title}</h4>
			<div class="well">
				{settings.content}
			</div>
			<!-- END settings -->
		</div>
	</div>

	<div class="form-actions">
		<a id="submitBtn" href="#" class="btn btn-primary btn-raised">[[global:save_changes]]</a>
	</div>
</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />