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


package body org.allbinary.input.automation.robot.InputRobotFactory_Package is

   procedure Initialize_Fields (This : in out InputRobotFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.hashtable := StdUtil_Package.getInstance.createHashtable;
      This.helpSetListenerInterface := null;
   end Initialize_Fields;


   --  throws Exception
   function getInstance return InputRobotFactory_Access is
   begin
        return InputRobotFactory_Package.inputRobotFactory;
   end getInstance;

   procedure Initialize (This : in out InputRobotFactory'Class) is
      graphenv : GraphicsEnvironment_Access;
      screens : GraphicsDevice_Access_Array_Access;
      inputRobotInterface : InputRobotInterface_Access;
      i : Integer;
   begin
      Initialize_Fields (This);
        begin
            graphenv := GraphicsEnvironment_Package.getLocalGraphicsEnvironment;
            screens := graphenv.getScreenDevices;
            inputRobotInterface := null;
            for i in 0 .. (screens'Length) - 1 loop
                inputRobotInterface := InputRobotInterface_Access (InputRobot_Package.Create (screens (i)));
                This.logUtil.putF (To_Unbounded_String ("Adding Robot: ") & inputRobotInterface.getName, InputRobotFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getRobots"));
                InputRobotFactory'Class (This).get.put (inputRobotInterface.getName, inputRobotInterface);
            end loop;
            This.logUtil.putF (To_Unbounded_String ("Number Of Robots: ") & Java_Image (This.hashtable.size), InputRobotFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getRobots"));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.putF (This.commonStrings.EXCEPTION_Id, InputRobotFactory_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
                end;
        end;
   end Initialize;

   function Create return InputRobotFactory_Access is
      This : constant InputRobotFactory_Access := new InputRobotFactory;
   begin
      InputRobotFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out InputRobotFactory; helpSetListenerInterface_Param : access HelpSetListener_Package.HelpSetListener'Class) is
      helpSetListenerInterface : constant HelpSetListener_Access := HelpSetListener_Access (helpSetListenerInterface_Param);
   begin
        This.helpSetListenerInterface := helpSetListenerInterface;
   end addListener;

   --  throws Exception
   procedure add (This : in out InputRobotFactory; inputRobotInterface_Param : access InputRobotInterface_Package.InputRobotInterface'Class) is
      inputRobotInterface : constant InputRobotInterface_Access := InputRobotInterface_Access (inputRobotInterface_Param);
      helpSet : HelpSet_Access;
      helpSetEvent : HelpSetEvent_Access;
   begin
        This.logUtil.putF (To_Unbounded_String ("Adding InputRobotInterface: ") & inputRobotInterface.getName, InputRobotFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("add"));
        InputRobotFactory'Class (This).get.put (inputRobotInterface.getName, inputRobotInterface);
        helpSet := inputRobotInterface.getHelpSet;
        if (This.helpSetListenerInterface) /= (null) then
            if (helpSet) /= (null) then
                if not (JavaHelpSetNotifier_Package.isNotified (helpSet)) then
                    helpSetEvent := HelpSetEvent_Package.Create (InputRobotFactory_Access'(This'Unchecked_Access), helpSet, HelpSetEvent_Package.HELPSET_ADDED);
                    This.helpSetListenerInterface.helpSetAdded (helpSetEvent);
                end if;
            else
                This.logUtil.putF (To_Unbounded_String ("Null HelpSet For: ") & inputRobotInterface.getName, InputRobotFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("add"));
            end if;
        else
            This.logUtil.putF (To_Unbounded_String ("No HelpSet Listener"), InputRobotFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("add"));
        end if;
   end add;

   --  throws Exception
   procedure loadLibraries (This : in out InputRobotFactory) is
      set : Set_Access;
      nameArray : Java_Object_Access_Array_Access;
      size : Integer;
      inputRobotInterface : InputRobotInterface_Access;
      index : Integer;
   begin
        set := InputRobotFactory'Class (This).get.keySet;
        This.logUtil.putF (To_Unbounded_String ("Loading Libraries"), InputRobotFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("loadLibraries"));
        nameArray := set.toArray;
        size := nameArray'Length;
        for index in 0 .. (size) - 1 loop
            inputRobotInterface := InputRobotFactory_Package.getInstance.get (Java_Unbox (nameArray (index)));
            InputRobotFactory_Package.loadLibrary (inputRobotInterface);
        end loop;
   end loadLibraries;

   --  throws Exception
   procedure loadLibraries (collection_Param : access Collection_Package.Collection'Class) is
      collection : constant Collection_Access := Collection_Access (collection_Param);
      logUtil : LogUtil_Access;
      iterator : Iterator_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        logUtil.putF (To_Unbounded_String ("Loading Libraries"), To_Unbounded_String ("InputRobotFactory"), To_Unbounded_String ("loadLibraries"));
        iterator := collection.iterator;
        while iterator.hasNext loop
            InputRobotFactory_Package.loadLibrary (InputRobotInterface_Access (iterator.next));
        end loop;
   end loadLibraries;

   --  throws Exception
   procedure loadLibrary (inputRobotInterface_Param : access InputRobotInterface_Package.InputRobotInterface'Class) is
      inputRobotInterface : constant InputRobotInterface_Access := InputRobotInterface_Access (inputRobotInterface_Param);
      logUtil : LogUtil_Access;
      securedNativeLibraryInterface : SecuredNativeLibraryInterface_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        if InterfaceUtil_Package.isImplemented (SecuredNativeLibraryInterface_Package.SecuredNativeLibraryInterface'Tag, inputRobotInterface) then
            logUtil.putF (To_Unbounded_String ("Loading Library: ") & inputRobotInterface.getName, To_Unbounded_String ("InputRobotFactory"), To_Unbounded_String ("loadLibraries"));
            securedNativeLibraryInterface := SecuredNativeLibraryInterface_Access (inputRobotInterface);
            securedNativeLibraryInterface.load;
        end if;
   end loadLibrary;

   --  throws Exception
   procedure unloadLibraries (This : in out InputRobotFactory) is
      set : Set_Access;
      inputRobotInterface : InputRobotInterface_Access;
      inputRobotArray : Java_Object_Access_Array_Access;
      size : Integer;
      securedNativeLibraryInterface : SecuredNativeLibraryInterface_Access;
      index : Integer;
   begin
        This.logUtil.putF (To_Unbounded_String ("Unloading Libraries"), InputRobotFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("unloadLibraries"));
        set := InputRobotFactory'Class (This).get.keySet;
        inputRobotInterface := null;
        inputRobotArray := set.toArray;
        size := inputRobotArray'Length;
        for index in 0 .. (size) - 1 loop
            inputRobotInterface := InputRobotFactory'Class (This).get (Java_Unbox (inputRobotArray (index)));
            if InterfaceUtil_Package.isImplemented (SecuredNativeLibraryInterface_Package.SecuredNativeLibraryInterface'Tag, inputRobotInterface) then
                This.logUtil.putF (To_Unbounded_String ("Unloading Library: ") & inputRobotInterface.getName, InputRobotFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("unloadLibraries"));
                securedNativeLibraryInterface := SecuredNativeLibraryInterface_Access (inputRobotInterface);
                securedNativeLibraryInterface.unload;
            end if;
        end loop;
   end unloadLibraries;

   --  throws Exception
   function get (This : in out InputRobotFactory) return ABHashtable_Access is
   begin
        return This.hashtable;
   end get;

   function get (This : in out InputRobotFactory; name : Unbounded_String) return InputRobotInterface_Access is
   begin
        This.logUtil.putF (To_Unbounded_String ("Getting Robot: ") & name, InputRobotFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getRobots"));
        return InputRobotInterface_Access (This.hashtable.get (name));
   end get;

   procedure get (This : in out InputRobotFactory; name : Unbounded_String) is
      Java_Result : constant InputRobotInterface_Access := InputRobotFactory'Class (This).get (name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

begin
   null;
   inputRobotFactory := InputRobotFactory_Package.Create;

end org.allbinary.input.automation.robot.InputRobotFactory_Package;


