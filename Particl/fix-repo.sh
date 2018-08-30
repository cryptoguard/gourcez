for fn in `ls | grep ".txt"`; do
        repo=${fn%".txt"}
        echo "fixing $repo"
        sed -i -r '/(\/'"${repo}"')/!s#(.+)\|#\1|\/'"${repo}"'#' $fn
done

