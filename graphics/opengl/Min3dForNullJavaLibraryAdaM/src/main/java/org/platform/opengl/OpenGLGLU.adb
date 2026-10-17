--  Generated Code Do Not Modify


package body org.platform.opengl.OpenGLGLU_Package is

   procedure Initialize_Fields (This : in out OpenGLGLU'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLGLU'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLGLU_Access is
      This : constant OpenGLGLU_Access := new OpenGLGLU;
   begin
      OpenGLGLU_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLGLU_Access is
   begin
        return OpenGLGLU_Package.instance;
   end getInstance;

   procedure gluLookAt (This : in out OpenGLGLU; gl : GL10_Access; eyeX : Float; eyeY : Float; eyeZ : Float; centerX : Float; centerY : Float; centerZ : Float; upX : Float; upY : Float; upZ : Float) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end gluLookAt;

   function gluProject (This : in out OpenGLGLU; gl : GL10_Access; objX : Float; objY : Float; objZ : Float; model : Float_Array_Access; modelOffset : Integer; project : Float_Array_Access; projectOffset : Integer; view : Integer_Array_Access; viewOffset : Integer; win : Float_Array_Access; winOffset : Integer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end gluProject;

   function gluUnProject (This : in out OpenGLGLU; gl : GL10_Access; winX : Float; winY : Float; winZ : Float; model : Float_Array_Access; modelOffset : Integer; project : Float_Array_Access; projectOffset : Integer; view : Integer_Array_Access; viewOffset : Integer; obj : Float_Array_Access; objOffset : Integer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end gluUnProject;

   procedure glFrustumf (This : in out OpenGLGLU; gl : GL10_Access; lt : Float; rt : Float; btm : Float; top : Float; zNear : Float; zFar : Float) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end glFrustumf;

   procedure gluProject (This : in out OpenGLGLU; gl : GL10_Access; objX : Float; objY : Float; objZ : Float; model : Float_Array_Access; modelOffset : Integer; project : Float_Array_Access; projectOffset : Integer; view : Integer_Array_Access; viewOffset : Integer; win : Float_Array_Access; winOffset : Integer) is
      Java_Result : constant Integer := OpenGLGLU'Class (This).gluProject (gl, objX, objY, objZ, model, modelOffset, project, projectOffset, view, viewOffset, win, winOffset);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end gluProject;

   procedure gluUnProject (This : in out OpenGLGLU; gl : GL10_Access; winX : Float; winY : Float; winZ : Float; model : Float_Array_Access; modelOffset : Integer; project : Float_Array_Access; projectOffset : Integer; view : Integer_Array_Access; viewOffset : Integer; obj : Float_Array_Access; objOffset : Integer) is
      Java_Result : constant Integer := OpenGLGLU'Class (This).gluUnProject (gl, winX, winY, winZ, model, modelOffset, project, projectOffset, view, viewOffset, obj, objOffset);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end gluUnProject;

begin
   null;
   instance := OpenGLGLU_Package.Create;

end org.platform.opengl.OpenGLGLU_Package;


