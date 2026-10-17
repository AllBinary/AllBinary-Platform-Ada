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


package body org.allbinary.log.LOGGING_Package is

   procedure Initialize_Fields (This : in out LOGGING'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out LOGGING'Class; value : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := value;
        LOGGING.logging.add (value);
   end Initialize;

   function Create (value : Unbounded_String) return LOGGING_Access is
      This : constant LOGGING_Access := new LOGGING;
   begin
      LOGGING_Package.Initialize (This.all, value);
      return This;
   end Create;

   function contains (logType_Param : access LOGGING_Package.LOGGING'Class) return Boolean is
      logType : constant LOGGING_Access := LOGGING_Access (logType_Param);
   begin
        return LOGGING.logging.contains (logType.toString);
   end contains;

   function toString (This : in out LOGGING) return Unbounded_String is
   begin
        return This.name;
   end toString;

   procedure contains (logType_Param : access LOGGING_Package.LOGGING'Class) is
      Java_Result : constant Boolean := contains (logType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end contains;

begin
   null;
   logging := BasicArrayListD_Package.Create;
   GRAPHICSPAINT := LOGGING_Package.Create (To_Unbounded_String ("Graphics Paint"));
   GRAPHICSCREATION := LOGGING_Package.Create (To_Unbounded_String ("Graphics Creation"));
   GRAPHICSDELETION := LOGGING_Package.Create (To_Unbounded_String ("Graphics Deletion"));
   LOADINGERROR := LOGGING_Package.Create (To_Unbounded_String ("Loading Error"));
   MENUEVENT := LOGGING_Package.Create (To_Unbounded_String ("Menu Action Event"));
   MOUSEEVENT := LOGGING_Package.Create (To_Unbounded_String ("Mouse Action Event"));
   KEYEVENT := LOGGING_Package.Create (To_Unbounded_String ("Keyboard Action Event"));
   ACTIONEVENT := LOGGING_Package.Create (To_Unbounded_String ("Action Event"));
   ADJUSTMENTEVENT := LOGGING_Package.Create (To_Unbounded_String ("Adjustment Action Event"));
   COMPONENTEVENT := LOGGING_Package.Create (To_Unbounded_String ("Component Action Event"));
   CONTAINEREVENT := LOGGING_Package.Create (To_Unbounded_String ("Container Action Event"));
   FOCUSEVENT := LOGGING_Package.Create (To_Unbounded_String ("Focus Action Event"));
   HIERARCHYEVENT := LOGGING_Package.Create (To_Unbounded_String ("Hierarchy Action Event"));
   INPUTEVENT := LOGGING_Package.Create (To_Unbounded_String ("Input Action Event"));
   INVOCATIONEVENT := LOGGING_Package.Create (To_Unbounded_String ("Invocation Action Event"));
   ITEMEVENT := LOGGING_Package.Create (To_Unbounded_String ("Item Action Event"));
   PAINTEVENT := LOGGING_Package.Create (To_Unbounded_String ("Paint Action Event"));
   TEXTEVENT := LOGGING_Package.Create (To_Unbounded_String ("Text Action Event"));
   WINDOWEVENT := LOGGING_Package.Create (To_Unbounded_String ("Window Action Event"));

end org.allbinary.log.LOGGING_Package;


