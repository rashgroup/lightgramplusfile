.class Lorg/telegram/ui/IntroActivity$2;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IntroActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IntroActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IntroActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->startPressed:Z
    invoke-static {v0}, Lorg/telegram/ui/IntroActivity;->access$600(Lorg/telegram/ui/IntroActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    # setter for: Lorg/telegram/ui/IntroActivity;->startPressed:Z
    invoke-static {v0, v3}, Lorg/telegram/ui/IntroActivity;->access$602(Lorg/telegram/ui/IntroActivity;Z)Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    const-class v2, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "fromIntro"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/IntroActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/IntroActivity;->finish()V

    goto :goto_0
.end method
