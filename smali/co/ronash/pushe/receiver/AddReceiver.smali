.class public final Lco/ronash/pushe/receiver/AddReceiver;
.super Lcom/evernote/android/job/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/evernote/android/job/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/evernote/android/job/k;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/evernote/android/job/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lco/ronash/pushe/task/scheduler/a/c;

    invoke-direct {v0, p1}, Lco/ronash/pushe/task/scheduler/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/evernote/android/job/k;->a(Lcom/evernote/android/job/e;)V

    return-void
.end method
