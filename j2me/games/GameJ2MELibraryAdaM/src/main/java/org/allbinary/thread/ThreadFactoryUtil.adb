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


package body org.allbinary.thread.ThreadFactoryUtil_Package is

   procedure Initialize_Fields (This : in out ThreadFactoryUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out ThreadFactoryUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ThreadFactoryUtil_Access is
      This : constant ThreadFactoryUtil_Access := new ThreadFactoryUtil;
   begin
      ThreadFactoryUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ThreadFactoryUtil_Access is
   begin
        return ThreadFactoryUtil_Package.instance;
   end getInstance;

   function getInstanceGameCanvasRunnable (This : in out ThreadFactoryUtil; runnable_Param : access GameCanvasRunnableInterface'Class) return Thread_Access is
      runnable : GameCanvasRunnableInterface_Access := GameCanvasRunnableInterface_Access (runnable_Param);
   begin
        return This.getInstanceType (runnable, runnable.getType);
   end getInstanceGameCanvasRunnable;

   function getInstanceForRunnable (This : in out ThreadFactoryUtil; runnable_Param : access ABRunnable'Class) return Thread_Access is
      runnable : ABRunnable_Access := ABRunnable_Access (runnable_Param);
   begin
        return This.getInstanceType (runnable, runnable.getType);
   end getInstanceForRunnable;

   function getInstanceType (This : in out ThreadFactoryUtil; runnable_Param : access Runnable'Class; type_Id : Integer) return Thread_Access is
      runnable : Runnable_Access := Runnable_Access (runnable_Param);
      commonStrings : CommonStrings_Access;
      primaryThreadPool : ThreadPool_Access;
      demoGameSingleThreadStartRunnable : RunnableCanvasSingleThreadStartRunnable_Access;
      thread : Thread_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        if J2MEUtil_Package.isHTML then
            if ((type_Id) = (DemoCanvas_Package.TYPE_Id)) or else ((type_Id) = (AllBinaryGameCanvas_Package.TYPE_Id)) then
                demoGameSingleThreadStartRunnable := RunnableCanvasSingleThreadStartRunnable_Package.Create (RunnableCanvas_Access (runnable));
                PreLogUtil_Package.put (StringMaker_Package.Create.append (To_Unbounded_String ("Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ")).append (StringUtil_Package.getInstance.toString (runnable)).toString, ThreadFactoryUtil_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
                primaryThreadPool := PrimaryThreadPool_Package.getInstance;
                primaryThreadPool.runTask (demoGameSingleThreadStartRunnable);
            else
                PreLogUtil_Package.put (StringMaker_Package.Create.append (To_Unbounded_String ("Using Pseudo Thread for Runnable under PlayN/HTML5: ")).append (StringUtil_Package.getInstance.toString (runnable)).toString, ThreadFactoryUtil_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
                primaryThreadPool := PrimaryThreadPool_Package.getInstance;
                primaryThreadPool.runTask (runnable);
            end if;
        end if;
        thread := Thread_Package.Create (runnable, runnable.toString);
        This.logUtil.putF (thread.toString, ThreadFactoryUtil_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
        return thread;
   end getInstanceType;

   procedure start (This : in out ThreadFactoryUtil; thread_Param : access Thread'Class) is
      thread : Thread_Access := Thread_Access (thread_Param);
   begin
        thread.start;
   end start;

   procedure getInstanceGameCanvasRunnable (This : in out ThreadFactoryUtil; runnable_Param : access GameCanvasRunnableInterface'Class) is
      Java_Result : constant Thread_Access := ThreadFactoryUtil'Class (This).getInstanceGameCanvasRunnable (runnable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceGameCanvasRunnable;

   procedure getInstanceForRunnable (This : in out ThreadFactoryUtil; runnable_Param : access ABRunnable'Class) is
      Java_Result : constant Thread_Access := ThreadFactoryUtil'Class (This).getInstanceForRunnable (runnable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForRunnable;

   procedure getInstanceType (This : in out ThreadFactoryUtil; runnable_Param : access Runnable'Class; type_Id : Integer) is
      Java_Result : constant Thread_Access := ThreadFactoryUtil'Class (This).getInstanceType (runnable_Param, type_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceType;

begin
   null;
   instance := ThreadFactoryUtil_Package.Create;

end org.allbinary.thread.ThreadFactoryUtil_Package;


