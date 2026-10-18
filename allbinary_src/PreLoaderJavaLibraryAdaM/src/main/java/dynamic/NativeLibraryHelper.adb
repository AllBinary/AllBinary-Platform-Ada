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



package body dynamic.NativeLibraryHelper_Package is

   procedure Initialize_Fields (This : in out NativeLibraryHelper'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out NativeLibraryHelper'Class; library : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.library := library;
   end Initialize;

   function Create (library : Unbounded_String) return NativeLibraryHelper_Access is
      This : constant NativeLibraryHelper_Access := new NativeLibraryHelper;
   begin
      NativeLibraryHelper_Package.Initialize (This.all, library);
      return This;
   end Create;

   procedure load (This : in out NativeLibraryHelper) is
   begin
        System_Package.loadLibrary (This.library);
   end load;

end dynamic.NativeLibraryHelper_Package;


