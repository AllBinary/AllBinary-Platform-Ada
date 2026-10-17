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


package body org.allbinary.string_Id.CommonStrings_Package is

   procedure Initialize_Fields (This : in out CommonStrings'Class) is
   begin
      null;
      This.EMPTY := To_Unbounded_String ("Empty");
      This.CREATE_IMAGE := To_Unbounded_String ("createImage");
      This.PLEASE_WAIT := To_Unbounded_String ("Please Wait");
      This.PLEASE_WAIT_FOR_SERVER := To_Unbounded_String ("Please Wait Getting Data From Server...");
      This.PERIODS := To_Unbounded_String ("...");
      This.LOADING := To_Unbounded_String ("Loading...");
      This.CONSTRUCTOR := To_Unbounded_String ("Constructor");
      This.START := To_Unbounded_String ("Start");
      This.END_Id := To_Unbounded_String ("End");
      This.EXCEPTION_Id := To_Unbounded_String ("Exception");
      This.EXCEPTION_LABEL := To_Unbounded_String ("Exception: ");
      This.CLEANUP := To_Unbounded_String ("cleanup");
      This.INIT := To_Unbounded_String ("init");
      This.CLOSE := To_Unbounded_String ("close");
      This.UP := To_Unbounded_String ("up");
      This.DOWN := To_Unbounded_String ("down");
      This.LEFT := To_Unbounded_String ("left");
      This.RIGHT := To_Unbounded_String ("right");
      This.DIRECTION_NAME := new Unbounded_String_Array'(This.DOWN, This.LEFT, This.RIGHT, This.UP);
      This.CREATE := To_Unbounded_String ("Create");
      This.REMOVE := To_Unbounded_String ("Remove");
      This.UPDATE := To_Unbounded_String ("Update");
      This.DELETE := To_Unbounded_String ("Delete");
      This.delete_Case := To_Unbounded_String ("delete");
      This.LOAD := To_Unbounded_String ("load");
      This.SAVE := To_Unbounded_String ("save");
      This.ADD := To_Unbounded_String ("Add");
      This.DROP := To_Unbounded_String ("Drop");
      This.INSERT := To_Unbounded_String ("Insert");
      This.VISIT := To_Unbounded_String ("visit");
      This.START_METHOD_NAME := This.START;
      This.END_METHOD_NAME := To_Unbounded_String ("end");
      This.GET := To_Unbounded_String ("get");
      This.PROCESS := To_Unbounded_String ("process");
      This.GET_INSTANCE := To_Unbounded_String ("getInstance");
      This.GET_LIST := To_Unbounded_String ("getList");
      This.RUN := To_Unbounded_String ("run");
      This.START_RUNNABLE := To_Unbounded_String ("Start Runnable");
      This.RUNNING := To_Unbounded_String ("Running");
      This.END_RUNNABLE := To_Unbounded_String ("End Runnable");
      This.DISABLE := To_Unbounded_String ("disable");
      This.ENABLE := To_Unbounded_String ("enable");
      This.SUCCESS := To_Unbounded_String ("Command Success");
      This.FAILURE := To_Unbounded_String ("Command Failed");
      This.NOT_IMPLEMENTED := To_Unbounded_String ("Not Implemented");
      This.UNKNOWN := To_Unbounded_String ("Unknown");
      This.ON_EVENT := To_Unbounded_String ("onEvent");
      This.IS_VALID := To_Unbounded_String ("isValid");
      This.TOSTRING := To_Unbounded_String ("toString");
      This.ADD_LISTENER := To_Unbounded_String ("addListener");
      This.REMOVE_LISTENER := To_Unbounded_String ("removeListener");
      This.SIZE := To_Unbounded_String ("size");
   end Initialize_Fields;

   procedure Initialize (This : in out CommonStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CommonStrings_Access is
      This : constant CommonStrings_Access := new CommonStrings;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return CommonStrings_Access is
   begin
        return CommonStrings_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant CommonStrings_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := CommonStrings_Package.Create;

end org.allbinary.string_Id.CommonStrings_Package;


