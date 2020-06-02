--This script will create the "Prompts" trigger chain head and 
--subordinate children to update gauges based on prompts

--create new Prompts trigger chain head if one does not exist
if exists("Prompts", "trigger") == 0 then
  permRegexTrigger("Prompts", "Astro",
    {
    "^(\d+)Hp (\d+)Ma (\d+)Mv \>",
    "^(\d+)Hp (\d+)Ma (\d+)Mv (\d+)Lev \>",
    "^(\d+)Hp (\d+)Ma (\d+)Mv (\d+)Lev  \[(\d+)%\]\>",
    "^(\d+)Hp (\d+)Ma (\d+)Mv  \[(\d+)%\]\>",
    "^(\d+)Hp (\d+)Ma (\d+)Mv \(mail\)\>",    
    "^(\d+)Hp (\d+)Ma (\d+)Mv \(news\)\>",
    },
    [=[
      --check if this window is active and has focus
      if hasFocus() then
      --gaugename:setvalue(current value,max value,text format)
      hpbar:setValue(curhp, maxhp,
      [[<font color="white"><b><center>]]..curhp..[[ Hitpoints | Wimpy at ]]..wimpyval..[[</center></b>]])
      mabar:setValue(curma, maxma,
      [[<font color="white"><b><center>]]..curma..[[ Mana</center></b>]])
      mvbar:setValue(curmv, maxmv,
      [[<font color="white"><b><center>]]..curmv..[[ Move</center></b>]])
      
      --set label boxes in bottom container based on battle monitor values
      RoundCountLabel:echo(
      [[<p style="font-size:12px"><b><center><font color="cyan">Rounds: ]]..battlemon.roundcount..[[</font></center></b></p>]])
      HumCountLabel:echo(
      [[<p style="font-size:12px"><b><center><font color="cyan">Hums: ]]..battlemon.hums..[[</font></center></b></p>]])
      PoisonCountLabel:echo(
      [[<p style="font-size:12px"><b><center><font color="cyan">Poisons: ]]..battlemon.poisons..[[</center></b></p>]])
      SummonCountLabel:echo(
      [[<p style="font-size:12px"><b><center><font color="cyan">Summons: ]]..battlemon.summons..[[</font></center></b></p>]])
      FullCountLabel:echo(
      [[<p style="font-size:12px"><b><center><font color="cyan">Full Heals: ]]..battlemon.fulls..[[</font></center></b></p>]])
      MobNameLabel:echo(
      [[<p style="font-size:12px"><b><center><font color="cyan">Killing: ]]..battlemon.monster..[[</font></center></b></p>]])
      end
    ]=]
  )
end

--create triggers within Prompts group if one does not exist;

if exists("Prompt HP", "trigger") == 0 then
  permRegexTrigger("Prompt HP", "Prompts",{"(\d+)Hp"}, [[curhp = tonumber(matches[2])]])
end

if exists("Prompt MA", "trigger") == 0 then
  permRegexTrigger("Prompt MA", "Prompts",{"(\d+)Ma"},[[curma = tonumber(matches[2]);]])
end
  
if exists("Prompt MV", "trigger") == 0 then
  permRegexTrigger("Prompt MV", "Prompts",{"(\d+)Mv"},[[curmv = tonumber(matches[2]);]])
end
  
if exists("Prompt TNL", "trigger") == 0 then
  permRegexTrigger("Prompt TNL", "Prompts",{"(\d+)Lev"},[[curtnl = tonumber(matches[2]);]])
end

if exists("Prompt Percent", "trigger") == 0 then
  permRegexTrigger("Prompt Percent", "Prompts",{"\[(\d+)%\]\>"},[[curpct = tonumber(matches[2]);fightstate = 1;]])
end

if exists("Prompt Peace", "trigger") == 0 then
  permRegexTrigger("Prompt Peace", "Prompts",{"[^\[(\d+)%\]]\>\s"},[[fightstate = 0;]])
end
