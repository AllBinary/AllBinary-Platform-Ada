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



package body org.allbinary.media.audio.BaseSoundsFactory_Package is

   procedure Initialize_Fields (This : in out BaseSoundsFactory'Class) is
   begin
      null;
      This.initialized := False;
   end Initialize_Fields;

   procedure Initialize (This : in out BaseSoundsFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BaseSoundsFactory_Access is
      This : constant BaseSoundsFactory_Access := new BaseSoundsFactory;
   begin
      BaseSoundsFactory_Package.Initialize (This.all);
      return This;
   end Create;


   procedure init (This : in out BaseSoundsFactory) is
   begin
        null;
   end init;

   --  throws Exception
   function getSoundInterfaceArray (This : in out BaseSoundsFactory) return Sound_Access_Array_Access is
   begin
        return new Sound_Access_Array'(0 .. (0) - 1 => null);
   end getSoundInterfaceArray;

   procedure setInitialized (This : in out BaseSoundsFactory; initialized : Boolean) is
   begin
        This.initialized := initialized;
   end setInitialized;

   function isInitialized (This : in out BaseSoundsFactory) return Boolean is
   begin
        return This.initialized;
   end isInitialized;

end org.allbinary.media.audio.BaseSoundsFactory_Package;


