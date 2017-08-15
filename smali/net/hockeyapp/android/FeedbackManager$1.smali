.class final Lnet/hockeyapp/android/FeedbackManager$1;
.super Landroid/os/Handler;
.source "FeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/FeedbackManager;->checkForAnswersAndNotify(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "feedback_response"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;

    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackManager$1;->val$context:Landroid/content/Context;

    const/4 v3, 0x0

    const-string/jumbo v4, "fetch"

    invoke-direct {v1, v2, v0, v3, v4}, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackManager$1;->val$context:Landroid/content/Context;

    # invokes: Lnet/hockeyapp/android/FeedbackManager;->getURLString(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v0}, Lnet/hockeyapp/android/FeedbackManager;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->setUrlString(Ljava/lang/String;)V

    invoke-static {v1}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    :cond_0
    return-void
.end method
