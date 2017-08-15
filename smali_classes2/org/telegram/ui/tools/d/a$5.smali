.class Lorg/telegram/ui/tools/d/a$5;
.super Ljava/lang/Object;
.source "AddRemmber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/d/a;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/d/a;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/d/a;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/d/a$5;->a:Lorg/telegram/ui/tools/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    new-instance v0, Lorg/telegram/ui/tools/d/a$c;

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a$5;->a:Lorg/telegram/ui/tools/d/a;

    invoke-direct {v0, v1}, Lorg/telegram/ui/tools/d/a$c;-><init>(Lorg/telegram/ui/tools/d/a;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a$5;->a:Lorg/telegram/ui/tools/d/a;

    iget-object v1, v1, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "HOUR_OF_DAY"

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a$5;->a:Lorg/telegram/ui/tools/d/a;

    invoke-static {v3}, Lorg/telegram/ui/tools/d/a;->a(Lorg/telegram/ui/tools/d/a;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/tools/d/a$5;->a:Lorg/telegram/ui/tools/d/a;

    iget-object v2, v2, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "MINUTE"

    iget-object v4, p0, Lorg/telegram/ui/tools/d/a$5;->a:Lorg/telegram/ui/tools/d/a;

    invoke-static {v4}, Lorg/telegram/ui/tools/d/a;->a(Lorg/telegram/ui/tools/d/a;)Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$c;IIZ)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a$5;->a:Lorg/telegram/ui/tools/d/a;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/d/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "Timepickerdialog"

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
