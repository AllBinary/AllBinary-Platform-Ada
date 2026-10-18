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


with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.canvas.RunnableCanvas_Package; use org.allbinary.canvas.RunnableCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.DemoCanvas_Package; use org.allbinary.game.displayable.canvas.DemoCanvas_Package;
with org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package; use org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.PrimaryThreadPool_Package; use org.allbinary.thread.PrimaryThreadPool_Package;
with org.allbinary.thread.ThreadPool_Package; use org.allbinary.thread.ThreadPool_Package;

package body org.allbinary.thread.ThreadFactoryUtil_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package RunnableCanvas_Package renames Standard.org.allbinary.canvas.RunnableCanvas_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package DemoCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.DemoCanvas_Package;
   package RunnableCanvasSingleThreadStartRunnable_Package renames Standard.org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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

   function getInstanceGameCanvasRunnable (This : in out ThreadFactoryUtil; runnable_Param : access GameCanvasRunnableInterface_Package.GameCanvasRunnableInterface'Class) return Thread_Access is
      runnable : constant GameCanvasRunnableInterface_Access := GameCanvasRunnableInterface_Access (runnable_Param);
   begin
        return ThreadFactoryUtil'Class (This).getInstanceType (runnable, runnable.getType);
   end getInstanceGameCanvasRunnable;

   function getInstanceForRunnable (This : in out ThreadFactoryUtil; runnable_Param : access ABRunnable_Package.ABRunnable'Class) return Thread_Access is
      runnable : constant ABRunnable_Access := ABRunnable_Access (runnable_Param);
   begin
        return ThreadFactoryUtil'Class (This).getInstanceType (runnable, runnable.getType);
   end getInstanceForRunnable;

   function getInstanceType (This : in out ThreadFactoryUtil; runnable_Param : access Runnable_Package.Runnable'Class; type_Id : Integer) return Thread_Access is
      runnable : constant Runnable_Access := Runnable_Access (runnable_Param);
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
        thread := Thread_Package.Create (runnable, Java_Object'Class (runnable.all).toString);
        This.logUtil.putF (thread.toString, ThreadFactoryUtil_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
        return thread;
   end getInstanceType;

   procedure start (This : in out ThreadFactoryUtil; thread_Param : access Thread_Package.Thread'Class) is
      thread : constant Thread_Access := Thread_Access (thread_Param);
   begin
        thread.start;
   end start;

   procedure getInstanceGameCanvasRunnable (This : in out ThreadFactoryUtil; runnable_Param : access GameCanvasRunnableInterface_Package.GameCanvasRunnableInterface'Class) is
      Java_Result : constant Thread_Access := ThreadFactoryUtil'Class (This).getInstanceGameCanvasRunnable (runnable_Param => runnable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceGameCanvasRunnable;

   procedure getInstanceForRunnable (This : in out ThreadFactoryUtil; runnable_Param : access ABRunnable_Package.ABRunnable'Class) is
      Java_Result : constant Thread_Access := ThreadFactoryUtil'Class (This).getInstanceForRunnable (runnable_Param => runnable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForRunnable;

   procedure getInstanceType (This : in out ThreadFactoryUtil; runnable_Param : access Runnable_Package.Runnable'Class; type_Id : Integer) is
      Java_Result : constant Thread_Access := ThreadFactoryUtil'Class (This).getInstanceType (runnable_Param => runnable_Param, type_Id => type_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceType;

begin
   null;
   instance := ThreadFactoryUtil_Package.Create;

end org.allbinary.thread.ThreadFactoryUtil_Package;


