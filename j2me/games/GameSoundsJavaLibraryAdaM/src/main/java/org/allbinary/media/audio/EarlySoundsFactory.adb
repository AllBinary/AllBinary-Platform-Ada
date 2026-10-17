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


package body org.allbinary.media.audio.EarlySoundsFactory_Package is

   procedure Initialize_Fields (This : in out EarlySoundsFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out EarlySoundsFactory'Class) is
   begin
      BaseSoundsFactory_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return EarlySoundsFactory_Access is
      This : constant EarlySoundsFactory_Access := new EarlySoundsFactory;
   begin
      EarlySoundsFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getSoundInterfaceArray (This : in out EarlySoundsFactory) return Sound_Access_Array_Access is
      soundInterfaceArray : Sound_Access_Array_Access;
      index : Integer;
   begin
        soundInterfaceArray := new Sound_Access_Array'(0 .. (2) - 1 => null);
        index := 0;
        soundInterfaceArray (Java_Post_Increment (index)) := SelectSound_Package.getInstance;
        soundInterfaceArray (Java_Post_Increment (index)) := ErrorSound_Package.getInstance;
        return soundInterfaceArray;
   end getSoundInterfaceArray;

   function getInstance return EarlySoundsFactory_Access is
   begin
        return EarlySoundsFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := EarlySoundsFactory_Package.Create;

end org.allbinary.media.audio.EarlySoundsFactory_Package;


