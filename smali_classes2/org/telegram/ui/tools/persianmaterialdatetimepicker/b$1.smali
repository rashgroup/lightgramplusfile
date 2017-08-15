.class Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b$1;
.super Landroid/database/ContentObserver;
.source "HapticFeedbackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b$1;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b$1;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b$1;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;Z)Z

    return-void
.end method
