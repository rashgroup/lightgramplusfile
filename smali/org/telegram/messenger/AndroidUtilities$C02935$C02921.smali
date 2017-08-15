.class Lorg/telegram/messenger/AndroidUtilities$C02935$C02921;
.super Ljava/lang/Object;
.source "AndroidUtilities.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/AndroidUtilities$C02935;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C02921"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/AndroidUtilities$C02935;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/AndroidUtilities$C02935;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/AndroidUtilities$C02935$C02921;->this$0:Lorg/telegram/messenger/AndroidUtilities$C02935;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v5, 0x1f7

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$C02935$C02921;->this$0:Lorg/telegram/messenger/AndroidUtilities$C02935;

    iget-object v0, v0, Lorg/telegram/messenger/AndroidUtilities$C02935;->val$context:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/AndroidUtilities$C02935$C02921;->this$0:Lorg/telegram/messenger/AndroidUtilities$C02935;

    iget-object v4, v4, Lorg/telegram/messenger/AndroidUtilities$C02935;->val$pck:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x1f7

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$C02935$C02921;->this$0:Lorg/telegram/messenger/AndroidUtilities$C02935;

    iget-object v0, v0, Lorg/telegram/messenger/AndroidUtilities$C02935;->val$context:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const-string/jumbo v3, "https://play.google.com/store/apps/details?id=es.rafalense.themes"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
