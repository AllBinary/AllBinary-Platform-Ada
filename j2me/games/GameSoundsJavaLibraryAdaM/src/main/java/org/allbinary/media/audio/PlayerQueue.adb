--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.media.audio.NoSound_Package; use org.allbinary.media.audio.NoSound_Package;

package body org.allbinary.media.audio.PlayerQueue_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out PlayerQueue'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
      
   end Initialize_Fields;


   procedure Initialize (This : in out PlayerQueue'Class; max : Integer) is
   begin
      Initialize_Fields (This);
        This.max := max;
   end Initialize;

   function Create (max : Integer) return PlayerQueue_Access is
      This : constant PlayerQueue_Access := new PlayerQueue;
   begin
      PlayerQueue_Package.Initialize (This.all, max);
      return This;
   end Create;

   procedure add (This : in out PlayerQueue; sound_Param : access Sound_Package.Sound'Class) is
      sound : constant Sound_Access := Sound_Access (sound_Param);
   begin
        begin
            if not (This.list.contains (Java_Object_Access (sound))) then
                This.list.add (Java_Object_Access (sound));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.put (This.commonStrings.EXCEPTION_Id, PlayerQueue_Access'(This'Unchecked_Access), This.commonStrings.ADD);
                end;
        end;
   end add;

   function process (This : in out PlayerQueue) return Boolean is
      sound : Sound_Access;
      played : Boolean;
      resource : Unbounded_String;
   begin
        sound := NoSound_Package.getInstance;
        begin
            played := False;
            if (This.list.size) > (0) then
                sound := Sound_Access (This.list.removeAt (0));
                if (sound) /= (null) then
                    sound.getPlayerP.start;
                end if;
                while (This.list.size) > (This.max) loop
                    This.list.removeAt (0);
                end loop;
                played := True;
            end if;
            return played;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            resource := StringUtil_Package.getInstance.EMPTY_STRING;
            if (sound) /= (null) then
                resource := sound.getResource;
            end if;
            PreLogUtil_Package.put (StringMaker_Package.Create.append (This.commonStrings.EXCEPTION_LABEL).append (resource).toString, PlayerQueue_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
            return False;
                end;
        end;
   end process;

   procedure clear (This : in out PlayerQueue) is
   begin
        This.list.clear;
   end clear;

   function toString (This : in out PlayerQueue) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (PlayerQueue_Package.TOTAL).appendint (This.list.size).toString;
   end toString;

begin
   null;
   TOTAL := To_Unbounded_String ("Sounds In Queue: ");

end org.allbinary.media.audio.PlayerQueue_Package;


