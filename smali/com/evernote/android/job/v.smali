.class Lcom/evernote/android/job/v;
.super Landroid/support/v4/util/LruCache;


# instance fields
.field final synthetic a:Lcom/evernote/android/job/u;


# direct methods
.method public constructor <init>(Lcom/evernote/android/job/u;)V
    .locals 1

    iput-object p1, p0, Lcom/evernote/android/job/v;->a:Lcom/evernote/android/job/u;

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Integer;)Lcom/evernote/android/job/p;
    .locals 3

    iget-object v0, p0, Lcom/evernote/android/job/v;->a:Lcom/evernote/android/job/u;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/evernote/android/job/u;->a(Lcom/evernote/android/job/u;IZ)Lcom/evernote/android/job/p;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/v;->a(Ljava/lang/Integer;)Lcom/evernote/android/job/p;

    move-result-object v0

    return-object v0
.end method
