.class Lorg/telegram/ui/LanguageSelectActivity$6;
.super Ljava/util/TimerTask;
.source "LanguageSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LanguageSelectActivity;->search(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LanguageSelectActivity;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LanguageSelectActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$6;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iput-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$6;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$6;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->searchTimer:Ljava/util/Timer;
    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$700(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$6;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/LanguageSelectActivity;->searchTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$702(Lorg/telegram/ui/LanguageSelectActivity;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$6;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$6;->val$query:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/LanguageSelectActivity;->processSearch(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$800(Lorg/telegram/ui/LanguageSelectActivity;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
