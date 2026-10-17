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


package body org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package is

   procedure Initialize_Fields (This : in out SavedCaptureGenericProfileDataWorkerType'Class) is
   begin
      null;
      This.path := Null_Unbounded_String;
      This.lastFrame := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out SavedCaptureGenericProfileDataWorkerType'Class; name : Unbounded_String; path : Unbounded_String; lastFrame : Integer) is
   begin
        GenericProfileDataWorkerType_Package.Initialize (This, name);
        Initialize_Fields (This);
        This.setPath (path);
        This.setLastFrame (lastFrame);
   end Initialize;

   function Create (name : Unbounded_String; path : Unbounded_String; lastFrame : Integer) return SavedCaptureGenericProfileDataWorkerType_Access is
      This : constant SavedCaptureGenericProfileDataWorkerType_Access := new SavedCaptureGenericProfileDataWorkerType;
   begin
      SavedCaptureGenericProfileDataWorkerType_Package.Initialize (This.all, name, path, lastFrame);
      return This;
   end Create;

   function getPath (This : in out SavedCaptureGenericProfileDataWorkerType) return Unbounded_String is
   begin
        return This.path;
   end getPath;

   procedure setPath (This : in out SavedCaptureGenericProfileDataWorkerType; path : Unbounded_String) is
   begin
        This.path := path;
   end setPath;

   function getLastFrame (This : in out SavedCaptureGenericProfileDataWorkerType) return Integer is
   begin
        return This.lastFrame;
   end getLastFrame;

   procedure setLastFrame (This : in out SavedCaptureGenericProfileDataWorkerType; lastFrame : Integer) is
   begin
        This.lastFrame := lastFrame;
   end setLastFrame;

begin
   null;
   SAVED_CAPTURE := SavedCaptureGenericProfileDataWorkerType_Package.Create (To_Unbounded_String ("Saved ") & InputImageType_Package.CAPTURE.getName, To_Unbounded_String ("c:\share\captures\2\"), 100);

end org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package;


