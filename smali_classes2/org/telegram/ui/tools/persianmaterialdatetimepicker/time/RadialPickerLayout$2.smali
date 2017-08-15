.class Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$2;
.super Ljava/lang/Object;
.source "RadialPickerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/Boolean;

.field final synthetic b:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;[Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$2;->b:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    iput-object p2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$2;->a:[Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$2;->b:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v0, v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$2;->b:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$2;->b:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->c(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$2;->a:[Ljava/lang/Boolean;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;IZZZ)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$2;->b:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;I)I

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$2;->b:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->d(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$2;->b:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    invoke-interface {v1, v2, v0, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;->a(IIZ)V

    return-void
.end method
