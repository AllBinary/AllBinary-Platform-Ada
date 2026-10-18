--  Generated Code Do Not Modify


with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.thread.NullPriorityRunnable_Package; use org.allbinary.thread.NullPriorityRunnable_Package;
with java.lang.Thread_Package; use java.lang.Thread_Package;

package body org.allbinary.thread.ThreadObjectUtil_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
   procedure Initialize_Fields (This : in out ThreadObjectUtil'Class) is
   begin
      null;
      This.NULL_PRIORITY_RUNNABLE := PriorityRunnable_Access (NullPriorityRunnable_Package.Create);
   end Initialize_Fields;

   procedure Initialize (This : in out ThreadObjectUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ThreadObjectUtil_Access is
      This : constant ThreadObjectUtil_Access := new ThreadObjectUtil;
   begin
      ThreadObjectUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ThreadObjectUtil_Access is
   begin
        return ThreadObjectUtil_Package.instance;
   end getInstance;

   procedure notifyObject (This : in out ThreadObjectUtil; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        anyType.notify;
   end notifyObject;

   --  throws Exception
   procedure waitObject (This : in out ThreadObjectUtil; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        anyType.wait;
   end waitObject;

   --  throws Exception
   procedure waitObjectFor (This : in out ThreadObjectUtil; anyType_Param : access Java_Object'Class; delay_Id : Long_Long_Integer) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        TsUtil_Package.getInstance.waitFor (anyType, delay_Id);
   end waitObjectFor;

   procedure processThread (This : in out ThreadObjectUtil; runnable_Param : access Runnable_Package.Runnable'Class) is
      runnable : constant Runnable_Access := Runnable_Access (runnable_Param);
      thread : Thread_Access;
   begin
        thread := Thread_Package.Create (runnable);
        thread.start;
   end processThread;

   procedure notifyObject (This : in out ThreadObjectUtil; Value : Unbounded_String) is
   begin
      ThreadObjectUtil'Class (This).notifyObject (Java_Box (Value));
   end notifyObject;

   procedure waitObject (This : in out ThreadObjectUtil; Value : Unbounded_String) is
   begin
      ThreadObjectUtil'Class (This).waitObject (Java_Box (Value));
   end waitObject;

begin
   null;
   instance := ThreadObjectUtil_Package.Create;

end org.allbinary.thread.ThreadObjectUtil_Package;


