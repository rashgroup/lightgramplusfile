.class Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$1;
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
.field final synthetic a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$1;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$1;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->b(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$1;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->setAmOrPmPressed(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$1;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->b(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->invalidate()V

    return-void
.end method
