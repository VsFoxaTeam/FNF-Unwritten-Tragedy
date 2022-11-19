local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('night_scene');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onEndSong()
	if not allowEnd and isStoryMode then
		startVideo('night_scene_two');
		allowEnd = true;
		return Function_Stop;
	end
	return Function_Continue;
end